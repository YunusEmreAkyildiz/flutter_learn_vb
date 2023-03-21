import 'package:flutter/material.dart';

// By changing MaterialApp -> theme -> errorColor, we can access it by using Theme.of()...

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});
  final ColorItems colorItems = ColorItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            // With Text inside Container with a color, we can create Text's background color.
            color: colorItems.moussaka,
            child: const Text('Data'),
          ),
          const SizedBox(height: 25),
          Text(
            'Data',
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Theme.of(context)
                      .errorColor, // We've changed this in main.dart
                ),
          ),
        ],
      ),
    );
  }
}

class ColorItems {
  final Color limone = const Color(0xffcec23b);
  final Color moussaka = const Color.fromRGBO(113, 43, 20, 1);
}
