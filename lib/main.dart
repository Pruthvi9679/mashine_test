import 'package:flutter/material.dart';

import 'views/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Machine Test',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePageView(),
    );
  }
}