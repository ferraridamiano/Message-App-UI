import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: HomeScreen(),
    );
  }
}
