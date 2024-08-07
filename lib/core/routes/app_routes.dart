import 'package:flutter/material.dart';
import 'package:postar/presentation/ui/home/home_screen.dart';

const String home = '/';
const String postDetail = '/post_detail';

final Map<String, WidgetBuilder> routes = {
  home: (context) => const HomeScreen(),
};

