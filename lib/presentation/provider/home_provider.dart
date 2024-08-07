import 'package:flutter/material.dart';
import 'package:postar/core/service/api_service.dart';
import 'package:postar/data/model/post_model.dart';

class HomeProvider with ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts => _posts;


  Future<void> fetchPosts() async {
    _posts = await ApiService.fetchPosts();
    notifyListeners();
  }


}