import 'package:flutter/material.dart';

class SideBySideBlock extends StatelessWidget {
  final Widget leftchild;
  final Widget rightchild;
  final Color backgroundColor;

  const SideBySideBlock(
      {Key key, this.leftchild, this.rightchild, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = List<Widget>();
    children.add(leftchild);
    children.add(rightchild);

    return Container(
      color: backgroundColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Align(alignment: Alignment.centerLeft, child: Text("Ein Titel")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: children,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
