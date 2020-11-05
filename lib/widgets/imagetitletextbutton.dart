import 'package:flutter/material.dart';

class ImageTitleTextButton extends StatelessWidget {
  final String imageUrl;
  final Widget title;
  final Widget text;
  final Widget button;

  const ImageTitleTextButton({
    Key key,
    this.imageUrl,
    this.title,
    this.text,
    this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageUrl,
            height: MediaQuery.of(context).size.height / 1.75),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
          child: this.title,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
          child: this.text,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
          child: this.button,
        ),
      ],
    );
  }
}
