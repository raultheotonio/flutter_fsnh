import 'package:flutter/material.dart';
import 'package:fshn/screen/Home_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: HomePage(),
      ),
      
    );
  }
}
