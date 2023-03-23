import 'package:flutter/material.dart';

// We created "assets" folder for this page. Normally this folder is under the folder named root.
// This assets folder can contain languages(localization), project's config files, images, GIFs, notifiers..

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String _imagePath =
      'https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 300,
            child: PngImage(name: ImageItems().appleWithBook),
          ),
          Image.network(
            _imagePath,
            errorBuilder: (context, error, stackTrace) =>
                const Text('Could not loaded image!'),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = 'books';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      // This mustn't contain static data, so we extracted it to the method -> _nameWithPath
      _nameWithPath,
      fit: BoxFit.contain,
      color: Colors.green,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
