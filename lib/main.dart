import 'package:app_to_do_thkha/page/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = "Todo App";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.pink,
      scaffoldBackgroundColor: Color(0xFFf6f5ee)
      ),
      home: HomePage(),
    );
  }
}
