import 'package:flutter/material.dart';

class TitleTextButton extends StatelessWidget {
  final Text title;
  final Text text;
  final RaisedButton button;

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
        this.title,
        this.text,
        this.button,
      ],
    );
  }
}
