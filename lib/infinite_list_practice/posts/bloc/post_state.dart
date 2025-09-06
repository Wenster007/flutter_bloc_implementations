import 'package:equatable/equatable.dart';

import '../model/post.dart';

sealed class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

final class PostInitial extends PostState {}

final class PostLoadInProgress extends PostState {}

final class PostLoadSuccess extends PostState {
  final List<Post> posts;
  final bool hasReachedMax;

  const PostLoadSuccess({required this.posts, required this.hasReachedMax});

  @override
  List<Object> get props => [posts, hasReachedMax];
}

final class PostLoadFailure extends PostState {}
