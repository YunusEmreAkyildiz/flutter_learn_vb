import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vb_1/101/app_bar_learn.dart'; // 5
import 'package:flutter_vb_1/101/button_learn.dart'; // 4
import 'package:flutter_vb_1/101/card_learn.dart'; // 10
import 'package:flutter_vb_1/101/color_learn.dart'; // 7
import 'package:flutter_vb_1/101/container_size_box_learn.dart'; // 2
import 'package:flutter_vb_1/101/icon_learn.dart'; // 6
import 'package:flutter_vb_1/101/image_learn.dart'; // 11
import 'package:flutter_vb_1/101/padding_learn.dart'; // 9
import 'package:flutter_vb_1/101/scaffold_learn.dart'; // 3
import 'package:flutter_vb_1/101/stateless_learn.dart'; // 8
import 'package:flutter_vb_1/101/text_learn_view.dart'; // 1
// 11 pages.

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
      theme: ThemeData.dark().copyWith(
        // We added these properties from the lesson 101/5/AppBar Learn
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle
              .light, // This is about the device's status bar's color.
        ),
        errorColor: ColorItems()
            .limone, // We added this from the lesson 101/7/ColorLearn
      ),
      home: ImageLearn(),
    );
  }
}
