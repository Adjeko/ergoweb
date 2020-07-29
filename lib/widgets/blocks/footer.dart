import 'package:ergoweb/config/constants/texts.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/blocks/textbanner.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextBanner(
      backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
      content: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            FlatButton(
              onPressed: () {},
              child: Texts.latoButtonText('Impressum', Colors.white),
            ),
            FlatButton(
              onPressed: () {},
              child: Texts.latoButtonText('Datenschutz', Colors.white),
            ),
            FlatButton(
              onPressed: () {},
              child: Texts.latoButtonText('Cookie-Einstellungen', Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
