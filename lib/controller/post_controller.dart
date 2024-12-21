import 'dart:io';

import 'package:task2/model/post.dart';

class PostController {
  static List<Post> posts = [];

  static void addPost({
    required String title,
    required String description,
    required File image,
  }) {
    posts.add(Post(title: title, description: description, imagePath: image.path));
  }

  static void updatePost(Post post, String newTitle, String newDescription) {
    post.title = newTitle;
    post.description = newDescription;
  }

  static void deletePost(int index) {
    posts.removeAt(index);
  }
}
