import 'package:postar/data/model/comment_model.dart';

import '../../data/model/post_model.dart';

final List<Post> listOfPosts = [
  Post(id: 1, title: 'Hurray, power has been restored'),
  Post(id: 2, title: 'Let us protest'),
  Post(id: 3, title: 'Project 2026'),
  Post(id: 4, title: 'Power of dart and flutter'),
  Post(id: 5, title: 'Sponsored by APC'),
  Post(id: 6, title: 'Japa japa japa'),
  Post(id: 7, title: 'Samsung builds cool things'),
  Post(id: 8, title: 'Just in, nothing really'),
  Post(id: 9, title: 'Tiktok trends right now'),
  Post(id: 10, title: 'Network issues still pending'),

];

final List<Comment> listOfComments = [
  Comment(id: 11, postId: 1, content: 'It is good'),
  Comment(id: 12, postId: 1, content: 'Tiktok'),
  Comment(id: 13, postId: 1, content: 'Testing'),
  Comment(id: 21, postId: 2, content: 'We are out of time'),
  Comment(id: 22, postId: 2, content: 'Balablu'),
  Comment(id: 23, postId: 2, content: 'Corn'),
  Comment(id: 31, postId: 3, content: 'EndBadGovernance'),
  Comment(id: 32, postId: 3, content: 'It will get better'),
  Comment(id: 33, postId: 3, content: 'No light for my area oo'),
  Comment(id: 41, postId: 4, content: 'Just took light'),
  Comment(id: 42, postId: 4, content: 'Ait posted it'),
  Comment(id: 43, postId: 4, content: 'Tech is cool'),
  Comment(id: 51, postId: 5, content: 'I have got to do something'),
  Comment(id: 52, postId: 5, content: 'It is good'),
  Comment(id: 61, postId: 6, content: 'It is good'),
  Comment(id: 71, postId: 7, content: 'It is good'),



];