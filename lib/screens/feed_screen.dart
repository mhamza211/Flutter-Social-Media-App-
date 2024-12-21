import 'package:flutter/material.dart';
import 'package:task2/controller/post_controller.dart';
import 'update_screen.dart';
import 'dart:io';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feed')),
      body: ListView.builder(
        itemCount: PostController.posts.length,
        itemBuilder: (context, index) {
          final post = PostController.posts[index];
          return Card(
            child: ListTile(
              title: Text(post.title),
              subtitle: Text(post.description),
              leading: Image.file(File(post.imagePath), width: 50),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UpdateScreen(post: post),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      PostController.deletePost(index);
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
