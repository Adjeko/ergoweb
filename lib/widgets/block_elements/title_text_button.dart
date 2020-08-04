import 'package:flutter/material.dart';

class TitleTextButton extends StatelessWidget {
  final Widget title;
  final Widget text;
  final Widget button;

  const TitleTextButton({
    Key key,
    this.title,
    this.text,
    this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
