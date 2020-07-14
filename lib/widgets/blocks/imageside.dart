import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
import 'package:ergoweb/widgets/block_elements/half_side_content.dart';
import 'package:ergoweb/widgets/block_elements/half_side_image.dart';

class ImageSide extends StatelessWidget {
  final String imageUrl;
  final TitleTextButton ttb;
  final bool isImageRight;
  final Color contentBackgroundColor;

  const ImageSide({
    Key key,
    this.imageUrl,
    this.ttb,
    this.isImageRight,
    this.contentBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _image = HalfSideImage(
      imageUrl: imageUrl,
    );

    Widget _content = HalfSideContent(
      ttb: ttb,
      backgroundColor: contentBackgroundColor,
    );

    Widget _left;
    Widget _right;

    if (isImageRight) {
      _right = _image;
      _left = _content;
    } else {
      _right = _content;
      _left = _image;
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Row(
        children: [
          _left,
          _right,
        ],
      ),
    );
  }
}
