import 'package:flutter/material.dart';
import 'package:postar/core/service/api_service.dart';
import 'package:postar/data/model/comment_model.dart';

class PostDetailsProvider with ChangeNotifier{

  List<Comment> _comments = [];

  List<Comment> get comments => _comments;

  Future<void> fetchCommentsByPostId(int id) async{
      _comments = await ApiService.fetchCommentsByPostID(id);
      notifyListeners();
  }
}