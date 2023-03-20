import 'package:flutter/material.dart';
import 'package:flutter_vb_1/101/button_learn.dart'; // 4
import 'package:flutter_vb_1/101/container_size_box_learn.dart'; // 2
import 'package:flutter_vb_1/101/scaffold_learn.dart'; // 3
import 'package:flutter_vb_1/101/text_learn_view.dart'; // 1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          'Flutter MaterialApp Title', // It will be displayed when the app being put in the background
      theme: ThemeData.dark(),
      home: ButtonLearn(),
    );
  }
}
