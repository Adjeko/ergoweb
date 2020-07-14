import 'package:flutter/material.dart';

class TextBanner extends StatelessWidget {
  final Widget content;
  final Color backgroundColor;

  const TextBanner({
    Key key,
    this.content,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: content,
          ),
        ),
      ),
    );
  }
}
