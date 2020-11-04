import 'package:flutter/material.dart';

class FreeSizeBlock extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const FreeSizeBlock({Key key, this.child, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: child,
      ),
    );
  }
}
