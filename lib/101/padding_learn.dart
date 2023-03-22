import 'package:flutter/material.dart';

// If we don't want our component to have any padding (they might have by default) -> EdgeInsets.zero
// Some widgets have padding property inside, if they don't, we can add it by wrapping them with Padding.

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.white,
                  height: 100,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  color: Colors.white,
                  height: 100,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text('Yunus'),
              ),
              Padding(
                // Overriding EdgeInsets -> EdgeInsets..() + EdgeInsets..()
                padding: const EdgeInsets.only(right: 20) +
                    const EdgeInsets.symmetric(vertical: 15),
                child: const Text('Emre'),
              ),
            ],
          ),
          Padding(
            padding: ProjectPaddings
                .pageVerticalPadding, // Every component under this has the same padding. So we give our padding property to their parent widget.
            child: Column(
              children: [
                Container(
                  color: Colors.indigoAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.indigo,
                  height: 100,
                ),
                Container(
                  color: Colors.indigoAccent,
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectPaddings {
  static const pageVerticalPadding = EdgeInsets.symmetric(vertical: 10);
}
