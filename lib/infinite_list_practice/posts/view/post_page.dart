import 'package:block_freezed_practice/infinite_list_practice/post_repository.dart';
import 'package:block_freezed_practice/infinite_list_practice/posts/view/post_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../bloc/post_bloc.dart';
import '../bloc/post_event.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => PostBloc(httpClient: http.Client(), postRepository: PostRepository())..add(PostFetched(), ),
        child: const PostsList(),
      ),
    );
  }
}