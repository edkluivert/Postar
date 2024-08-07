import 'package:flutter/material.dart';
import 'package:postar/core/routes/app_routes.dart';
import 'package:postar/presentation/provider/post_details_provider.dart';
import 'package:provider/provider.dart';

import 'presentation/provider/home_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        ChangeNotifierProvider(create: (context) => PostDetailsProvider()),
      ],
      child: MaterialApp(
        title: 'Postar',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: home,
        routes: routes,
      ),
    );
  }
}

