import 'package:flutter/material.dart';

// Mostly used border types:
/*
Borders
StadiumBorder()
CircleBorder()
RoundedRectangleBorder()
*/

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomCard(
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('Yunus'),
              ),
            ),
          ),
          _CustomCard(
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('Emre'),
              ),
            ),
          ),
          Card(
            margin: ProjectMargins.cardMargin,
            color: Theme.of(context).colorScheme.background,
            child: const SizedBox(height: 100, width: 100),
          ),
        ],
      ),
    );
  }
}

// If it's Custom Card then it mustn't contain anything but Card in return part, so we deleted child part,
// then we add final Widget child; Ctrl+. then select -> Create constructor for final fields.
class _CustomCard extends StatelessWidget {
  _CustomCard({required this.child});
  final Widget child;
  final RoundedRectangleBorder roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      color: Theme.of(context).colorScheme.background,
      child: child,
      shape:
          roundedRectangleBorder, // We moved it to the field part by using -> Extract Local Variable.
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}
