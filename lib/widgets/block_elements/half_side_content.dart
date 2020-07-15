import 'package:flutter/material.dart';

class HalfSideContent extends StatelessWidget {
  final Widget content;
  final Color backgroundColor;

  const HalfSideContent({
    Key key,
    this.content,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Container(
        color: backgroundColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: content,
          ),
        ),
      ),
    );
  }
}
