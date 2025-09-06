import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:block_freezed_practice/infinite_list_practice/post_repository.dart';
import 'package:block_freezed_practice/infinite_list_practice/posts/bloc/post_event.dart';
import 'package:block_freezed_practice/infinite_list_practice/posts/bloc/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_transform/stream_transform.dart';

import 'package:http/http.dart' as http;

class PostBloc extends Bloc<PostEvent, PostState> {
  final http.Client _httpClient;
  PostRepository _postRepository;

  Duration throttleDuration = Duration(milliseconds: 100);

  PostBloc({
    required http.Client httpClient,
    required PostRepository postRepository,
  }) : _httpClient = httpClient,
        _postRepository = postRepository,
        super(PostInitial()) {
    on<PostFetched>(
      _onFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  Future<void> _onFetched(PostFetched event, Emitter<PostState> emit) async {
    if (state is PostLoadSuccess) {
      final currentState = state as PostLoadSuccess;
      if (currentState.hasReachedMax) return;

      try {
        final posts = await _postRepository.fetchPosts(startIndex: currentState.posts.length);

        if (posts.isEmpty) {
          emit(PostLoadSuccess(posts: currentState.posts, hasReachedMax: true));
        } else {
          emit(
            PostLoadSuccess(
              posts: [...currentState.posts, ...posts],
              hasReachedMax: false,
            ),
          );
        }
      } catch (e) {
        emit(PostLoadFailure());
      }
    } else if (state is PostInitial) {
      try {
        final posts = await _postRepository.fetchPosts(startIndex: 0);
        emit(PostLoadSuccess(posts: posts, hasReachedMax: posts.isEmpty));
      } catch (e) {
        emit(PostLoadFailure());
      }
    }
  }

  EventTransformer<E> throttleDroppable<E>(Duration duration) {
    return (events, mapper) {
      return droppable<E>().call(events.throttle(duration), mapper);
    };
  }

}
