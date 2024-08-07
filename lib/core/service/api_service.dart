import 'package:postar/core/utils/mock_data.dart';
import 'package:postar/data/model/comment_model.dart';
import 'package:postar/data/model/post_model.dart';

class ApiService {

  static Future<List<Post>> fetchPosts() async{
    await Future.delayed(const Duration(seconds: 2));
    return listOfPosts;
  }

  static Future<List<Comment>> fetchCommentsByPostID(int id) async{
    await Future.delayed(const Duration(seconds: 2));
    return listOfComments.where((comment) => comment.postId == id).toList();
  }

}