import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.userName});
  final String _name = "Y.E.A.";
  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Welcome $_name ${_name.length}' * 10),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              ('Welcome $_name ${_name.length}' * 20),
              maxLines: 2,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.right,
              style: TextStyle(color: ProjectColors.welcomeColor),
            ),
            Text(
              'Merhabalar with userName: $userName, ',
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.amber),
            ),
            Text(userName ??
                ''), // If userName comes as null, we will at least replace it with ''. Choose this instead of -> userName!
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    color: Colors.purple,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
