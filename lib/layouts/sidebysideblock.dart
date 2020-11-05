import 'package:flutter/material.dart';

class SideBySideBlock extends StatelessWidget {
  final Widget onTop;
  final Widget leftchild;
  final Widget rightchild;
  final Color backgroundColor;

  const SideBySideBlock(
      {Key key,
      this.onTop,
      this.leftchild,
      this.rightchild,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = List<Widget>();
    double scale = 2.3;

    Widget leftsized = SizedBox(
      width: MediaQuery.of(context).size.width / scale,
      child: leftchild,
    );
    Widget rightsized = SizedBox(
      width: MediaQuery.of(context).size.width / scale,
      child: rightchild,
    );

    children.add(leftsized);
    children.add(rightsized);

    return Container(
      color: backgroundColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Column(
            children: [
              onTop,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: children,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
