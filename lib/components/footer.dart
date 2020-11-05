import 'package:flutter/material.dart';

import 'package:ergoweb/config/constants/texts.dart';
import 'package:ergoweb/services/ergolocalizations.dart';
import 'package:ergoweb/layouts/freesizeblock.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FreeSizeBlock(
      backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            FlatButton(
              onPressed: () {},
              child: Texts.buttonText(
                  ErgoLocalizations.of(context).translate('impressum'),
                  Colors.white),
            ),
            FlatButton(
              onPressed: () {},
              child: Texts.buttonText(
                  ErgoLocalizations.of(context).translate('datenschutz'),
                  Colors.white),
            ),
            FlatButton(
              onPressed: () {},
              child: Texts.buttonText(
                  ErgoLocalizations.of(context).translate('cookie'),
                  Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
