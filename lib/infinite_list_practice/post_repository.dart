import 'dart:convert';

import 'package:block_freezed_practice/infinite_list_practice/posts/model/post.dart';
import 'package:http/http.dart' as http;


class PostRepository {
  int _postLimit = 20;
  PostRepository();

  Future<List<Post>> fetchPosts({required int startIndex}) async {
    final response = await http.get(
      Uri.https(
        'jsonplaceholder.typicode.com',
        '/posts',
        <String, String>{'_start': '$startIndex', '_limit': '$_postLimit'},
      ),
      headers: {
        'User-Agent': 'FlutterApp/1.0 (Android Emulator)',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final body = json.decode(response.body) as List;
      return body.map((dynamic json) {
        final map = json as Map<String, dynamic>;
        return Post(
          id: map['id'] as int,
          title: map['title'] as String,
          body: map['body'] as String,
        );
      }).toList();
    }
    throw Exception('error fetching posts');
  }

}