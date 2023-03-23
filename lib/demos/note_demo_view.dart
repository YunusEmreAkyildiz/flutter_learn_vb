import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vb_1/101/image_learn.dart';

class NoteDemo extends StatelessWidget {
  const NoteDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final String _title = 'Create Your First Note';
    final String _description = 'Add your note';
    final String _createNote = 'Create A Bote';
    final String _importNote = 'Import Notes';

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBook),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubtitleWidget(text: _description * 10),
            ),
            const Spacer(),
            _createButton(_createNote, context),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            const SizedBox(height: ButtonHeights.buttonNormalHeight)
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(String _createNote, BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeights.buttonNormalHeight,
        child: Center(
          child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
    );
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.text})
      : super(key: key);
  final TextAlign textAlign;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1!
          .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5!
          .copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const verticalPadding = EdgeInsets.symmetric(vertical: 10);
  static const symmetricPadding =
      EdgeInsets.symmetric(vertical: 10, horizontal: 20);
}

class ButtonHeights {
  static const buttonNormalHeight = 50.0;
}
