import 'package:flutter/material.dart';
import 'package:flutter_vb_1/101/container_size_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold samples'),
      ),
      body: const Text('Hello'),
      backgroundColor: Colors.red.shade900,
      //extendBody: true,
      drawer: const Drawer(),
      bottomSheet: const Text('Bottom Sheet'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 200,
            ),
          );
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: Container(
        height: 150,
        decoration:
            ProjectContainerDecoration(), // Comes from 101/container_size_box_learn.dart
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: 'a',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: 'b',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: 'c',
            ),
          ],
        ),
      ),
    );
  }
}
