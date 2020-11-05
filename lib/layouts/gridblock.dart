import 'package:flutter/material.dart';

class GridBlock extends StatelessWidget {
  final Widget onTop;
  final List<Widget> children;
  final Color backgroundColor;

  const GridBlock({Key key, this.onTop, this.children, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> modifiedChildren = List<Widget>();
    children.forEach((element) {
      modifiedChildren.add(Center(
        child: element,
      ));
    });

    return Container(
      color: backgroundColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Column(
            children: [
              onTop,
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 36.0,
                mainAxisSpacing: 12.0,
                childAspectRatio: 400 / 700,
                children: modifiedChildren,
              )
            ],
          ),
        ),
      ),
    );
  }
}
