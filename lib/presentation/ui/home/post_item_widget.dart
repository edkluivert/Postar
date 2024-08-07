import 'package:flutter/material.dart';
import 'package:postar/data/model/post_model.dart';
import 'package:postar/presentation/ui/post_detail/post_detail_screen.dart';

class PostItemWidget extends StatelessWidget {
  final Post post;

  const PostItemWidget(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.id.toString()),
      subtitle: Text(post.title),
      leading: const FlutterLogo(size: 40,),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostDetailScreen(post: post),
          ),
        );
      },
    );
  }
}