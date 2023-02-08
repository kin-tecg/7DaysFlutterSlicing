import 'package:flutter/material.dart';
import 'package:tujuh_hari/theme.dart';
import 'package:tujuh_hari/pages/day1Venture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child:Venture()
      )
    );
  }
}



