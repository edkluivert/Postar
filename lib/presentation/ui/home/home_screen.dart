import 'package:flutter/material.dart';
import 'package:postar/presentation/provider/home_provider.dart';
import 'package:postar/presentation/ui/home/post_item_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Provider.of<HomeProvider>(context, listen: false).fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Consumer<HomeProvider>(
              builder: (context, provider, widget) {
                return ListView.builder(
                    itemCount: provider.posts.length,
                    itemBuilder: (context, index) {
                      return PostItemWidget(provider.posts[index]);
                    });
              },
            );
          }
        },
      ),
    );
  }
}
