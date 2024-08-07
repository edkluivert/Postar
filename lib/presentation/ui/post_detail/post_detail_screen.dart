import 'package:flutter/material.dart';
import 'package:postar/data/model/post_model.dart';
import 'package:postar/presentation/provider/post_details_provider.dart';
import 'package:postar/presentation/ui/post_detail/comment_item_widget.dart';
import 'package:provider/provider.dart';

class PostDetailScreen extends StatefulWidget {
  final Post post;
  const PostDetailScreen({super.key, required this.post});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details of Post ${widget.post.id}'),
      ),
      body: Column(
        children: [
          const FlutterLogo(size: 60,),
          const SizedBox(height: 10,),
          Text(widget.post.title,),
          const SizedBox(height: 40,),
          FutureBuilder(
              future: Provider.of<PostDetailsProvider>(context, listen: false).fetchCommentsByPostId(widget.post.id),
              builder: (context, snapshot){
                if(snapshot.connectionState == ConnectionState.waiting){
                  return const Center(child: CircularProgressIndicator());
                }else{
                  return Consumer<PostDetailsProvider>(
                      builder: (context, cProvider, widget){
                        if(cProvider.comments.isEmpty){
                          return const Text('No comments yet');
                        }else{
                          return Expanded(
                            child: ListView.separated(
                                itemCount: cProvider.comments.length,
                                padding: const EdgeInsets.symmetric(horizontal: 21),
                                itemBuilder: (context, index){
                                  return CommentItemWidget(comment: cProvider.comments[index]);
                                },
                               separatorBuilder: (context,index){
                                  return const SizedBox(height: 10,);
                               },
                            ),
                          );
                        }
                      }
                  );
                }
              }
          ),

        ],
      ),
    );
  }
}
