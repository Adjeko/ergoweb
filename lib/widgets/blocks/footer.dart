import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/Blocks/textbanner.dart';

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
              child: Text('Impressum', style: TextStyle(color: Colors.white)),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Datenschutz', style: TextStyle(color: Colors.white)),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Cookie-Einstellungen',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
