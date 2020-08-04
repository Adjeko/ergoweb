import 'package:ergoweb/config/constants/colors.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/block_elements/title_text_button.dart';

class ImageFull extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final String buttonText;
  final Widget buttons;

  const ImageFull({
    Key key,
    this.imageUrl,
    this.title,
    this.text,
    this.buttonText,
    this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
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
            Center(
              child: TitleTextButton(
                title: Texts.header(title, ErgoColors.logoTextAccent),
                text: Texts.subheader(text, ErgoColors.logoTextAccent),
                button: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: RaisedButton(
                    color: ErgoColors.logoTextAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    onPressed: () {},
                    child: Texts.buttonText(buttonText, Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
