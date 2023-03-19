import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Text('a' * 500),
          ),
          const SizedBox
              .shrink(), // It is used when we want to add an empty space on the screen.
          SizedBox.square(
            dimension: 75,
            child: Text('b' * 50),
          ),
          Container(
            height: 50,
            //color: Colors.red, // Can't be used with decoartion: color:
            constraints: const BoxConstraints(
                maxWidth: 150, minWidth: 100, maxHeight: 100),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Text('c' *
                30), // If we decrease the lenghe (30), the container will shrink -> something like responsive design.
            decoration: ProjectUtility
                .boxDecoration, // There are 2 ways of doing this below
          ),
        ],
      ),
    );
  }
}

// 1st way
class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    //color: Colors.red, // Not using when gradient is on.
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    //shape: BoxShape.circle,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      width: 10,
      color: Colors.white12,
    ),
    boxShadow: const [
      BoxShadow(
        color: Colors.green,
        offset: Offset(0.1, 1),
      ),
    ],
  );
}

// 2nd way
class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          //color: Colors.red, // Not using when gradient is on.
          gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 10,
            color: Colors.white12,
          ),
          boxShadow: [
            const BoxShadow(
              color: Colors.green,
              offset: Offset(0.1, 1),
            ),
          ],
        );
}
