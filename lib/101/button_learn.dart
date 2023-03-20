import 'package:flutter/material.dart';

// When we style the text of a button -> Text('', style: ),
// When we style the button -> ..Button(style: )
// There are 2 ways of styling a button -> ButtonStyle (MaterialStateProperty) and OutlinedButton,
// We prefer to use OutlinedButton but with ButtonStyle we can customize the button.
// Every button presents ..Button.icon(icon: ,label: ) which means there will be a button with a text next to an icon

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: Theme.of(context).textTheme.subtitle1,
              )),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Data',
              style: TextStyle(color: Colors.blue),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  }
                  return Colors.white;
                },
              ),
            ),
          ),
          const ElevatedButton(
              onPressed: null,
              child: Text(
                  'Disabled')), // We can make a button disable by this way.
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          OutlinedButton(onPressed: () {}, child: const Text('Data')),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Styled'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(30),
            ),
          ),
          InkWell(
              onTap: () {},
              child: const Text(
                  'InkWell')), // When we want a button with no padding and style etc.
          const SizedBox(height: 15),
          // Let's say we need a button that has a Text with padding inside.
          // Instead of sizing it according to the screen, we can add Padding,
          // This way, we won't need to use generic size.
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 17, bottom: 17, right: 40, left: 40),
              child: Text(
                'Place Bid',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: Colors.white54),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
