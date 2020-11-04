import 'package:flutter/material.dart';

class FullSizeBlock extends StatelessWidget {
  final Widget child;

  const FullSizeBlock({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: child,
    );
  }
}
