import 'package:flutter/material.dart';

// It is suggested to use icons that icon.._outlined
// We can set icon theme properties in MaterialApp -> theme but for 101, this is enough.

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final iconSize = IconSizes();
  final iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cut_outlined,
              size: iconSize.iconSmall,
              color: Theme.of(context)
                  .backgroundColor, // The advantage of this use is, e.g. user changed the theme (dark to light mode), this color will change accordingly.
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              size: iconSize.iconSmall,
              color: iconColor.scuba,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 25;
}

class IconColors {
  final Color scuba = const Color(0xff5f92b9);
}
