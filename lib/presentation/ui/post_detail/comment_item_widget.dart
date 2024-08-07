import 'package:flutter/material.dart';
import 'package:postar/data/model/comment_model.dart';

class CommentItemWidget extends StatelessWidget {
  final Comment comment;
  const CommentItemWidget({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueAccent,
          ),
          child: Center(child: Text(comment.id.toString(),
            style: TextStyle(
              color: Colors.white
            ),
          ))),
      title: Text(comment.content),
      subtitle: Text(comment.content),
    );
  }
}
