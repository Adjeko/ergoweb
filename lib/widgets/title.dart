import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  final Widget child;
  final String imageUrl;

  const Title({Key key, this.child, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Opacity(
          opacity: 0.8,
          child: Container(
            color: Colors.white,
          ),
        ),
        child,
      ],
    );
  }
}
