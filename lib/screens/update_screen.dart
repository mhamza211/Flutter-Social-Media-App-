import 'package:flutter/material.dart';
import 'package:task2/controller/post_controller.dart';
import 'package:task2/model/post.dart';

class UpdateScreen extends StatelessWidget {
  final Post post;

  UpdateScreen({required this.post});

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _titleController.text = post.title;
    _descriptionController.text = post.description;

    return Scaffold(
      appBar: AppBar(title: Text('Update Post')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                PostController.updatePost(
                  post,
                  _titleController.text,
                  _descriptionController.text,
                );
                Navigator.pop(context);
              },
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
