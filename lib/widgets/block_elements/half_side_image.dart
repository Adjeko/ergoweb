import 'package:flutter/material.dart';

class HalfSideImage extends StatelessWidget {
  final String imageUrl;

  const HalfSideImage({
    Key key,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            alignment: FractionalOffset.center,
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
