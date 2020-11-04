import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ergoweb/config/config.dart';

class PictureAndContentBlock extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final String imageUrl;
  final ImageSide side;

  const PictureAndContentBlock(
      {Key key, this.child, this.backgroundColor, this.imageUrl, this.side})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );

    List<Widget> ordered = List<Widget>();

    switch (side) {
      case ImageSide.left:
        ordered.add(image);
        ordered.add(child);
        break;
      case ImageSide.right:
        ordered.add(child);
        ordered.add(image);
        break;
      default:
        ordered.add(image);
        ordered.add(child);
    }

    return Container(
      color: backgroundColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: ordered,
        ),
      ),
    );
  }
}
