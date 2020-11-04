import 'package:flutter/material.dart';

import 'package:ergoweb/services/ergolocalizations.dart';
import 'package:ergoweb/config/constants/colors.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:ergoweb/layouts/layouts.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/sidebyside.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        ImageSide(
          isImageRight: true,
          contentBackgroundColor: Colors.white,
          imageUrl:
              'https://jimdo-storage.freetls.fastly.net/image/74324891/965a5cb6-7a8c-48bc-9b6c-b2d995ab43cd.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=1825&height=2560&trim=0,1388,0,1619',
          ttb: TitleTextButton(
            title: Align(
              alignment: Alignment.centerLeft,
              child: Texts.header(
                  ErgoLocalizations.of(context).translate('about_1_title'),
                  ErgoColors.logoTextAccent),
            ),
            text: Texts.text(
                ErgoLocalizations.of(context).translate('about_1_text'),
                Colors.black),
            button: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              color: Color.fromRGBO(44, 65, 104, 1.0),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Texts.buttonText(
                    ErgoLocalizations.of(context).translate('about_1_button'),
                    Colors.white),
              ),
            ),
          ),
        ),
        SideBySide(),
      ],
    );
  }
}
