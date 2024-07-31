// ignore_for_file: unnecessary_import, prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_1/pages/home_page.dart';
import 'package:quiz_1/pages/start_page.dart';

import 'pages/quiz.dart';

///
//mevcut soruları, doğru cevapları, kullanıcının cevaplarını vb. tutmak için kullanılır
///
Quiz quiz = Quiz();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      //MainPage(),
    );
  }
}
