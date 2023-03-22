import 'package:flutter/material.dart';

// Let's say we have multiple components of same type that don't contain data procesess, we should create a,
// Stateless Widget (e.g. TitleTextWidget) that contains their properties.
// The point is, when there are lots of components and they are getting more and more complex, we should create a Stateless Widget for them.
// When we are creating a custom component (e.g. Stateless Widget), the most important point is,
// the management of the parameters that it gets from outside.
// Easy way of creating this Wdiget is, after we are done with the component, do "Extract Widget".
// If want our custom widget to be file special (only accessible from where it is), put "_" in front of it's name.
// When the component is not so complex to be a different Widget, we can do "Extract Method" (e.g. _emptySpace).

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleTextWidget(
              text:
                  'Yunus 1'), // Instead of using multipe Text Widgets, we created a widget for all.
          _emptySpace(),
          const TitleTextWidget(text: 'Yunus 2'), // So now they look clearer.
          _emptySpace(),
          const TitleTextWidget(text: 'Yunus 3'),
          _emptySpace(),
          const TitleTextWidget(text: 'Yunus 4'),
          _emptySpace(),
          const TitleTextWidget(text: 'Yunus 5'),
          _emptySpace(),
          const TitleTextWidget(text: 'Yunus 6'),
          _emptySpace(),
          const _CustomContainer(),
        ],
      ),
    );
  }

  SizedBox _emptySpace() => const SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.cyanAccent,
        border: Border.all(
          color: Colors.white70,
          style: BorderStyle.solid,
          width: 5,
        ),
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String
      text; // Stateless Widget doesn't want a variable that can change later. So we must make them "final" for best practice.
  // If we want to add a nullable field, we could make it like "String?".
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline5);
  }
}
