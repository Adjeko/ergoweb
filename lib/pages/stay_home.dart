import 'package:flutter/material.dart';

import 'package:ergoweb/config/constants/colors.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:ergoweb/pages/layouts/webpage.dart';
import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/blocks/textbanner.dart';

class StayHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        ImageSide(
          isImageRight: true,
          contentBackgroundColor: Colors.white,
          imageUrl:
              'https://jimdo-storage.freetls.fastly.net/image/91163506/c1292eda-b31f-42e0-9d4d-feb0d0d25a57.png?quality=80&auto=webp&disable=upscale&width=1023&height=1024',
          ttb: TitleTextButton(
            title: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Texts.latoHeader(
                      'Bleib zuhause und gesund', ErgoColors.logoTextAccent),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Texts.latoSubheader(
                      'In Balance mit Ergotherapie', ErgoColors.logoTextAccent),
                ),
              ],
            ),
            text: Texts.latoText(
                'In Quarantänezeiten sind Menschen aufgrund von Faktoren, die außerhalb ihrer Kontrolle liegen, von der Möglichkeit ausgeschlossen, an bedeutungsvollen Betätigungen teilzuhaben. Dies kann negative Auswirkungen auf dein Wohlbefinden und deine Gesundheit haben. Daher ist es gerade jetzt wichtig, eine Tagesstruktur zu schaffen und deine Betätigungen in Balance zu halten.\n\nHier kann dir Ergotherapie helfen!',
                Colors.black),
            button: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              color: Color.fromRGBO(44, 65, 104, 1.0),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Texts.latoButtonText('zum Flyer', Colors.white),
              ),
            ),
          ),
        ),
        TextBanner(
          backgroundColor: Color.fromRGBO(209, 210, 203, 1.0),
          content: TitleTextButton(
            title: Texts.latoSubheader(
                'Du hast Interesse an weiteren Angeboten? ', Colors.white),
            text: Texts.latoText('Dann schreib uns!', Colors.white),
            button: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              color: Color.fromRGBO(229, 229, 229, 1.0),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Texts.latoButtonText('Kontakt', Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
