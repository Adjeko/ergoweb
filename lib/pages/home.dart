import 'package:ergoweb/services/ergolocalizations.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/config/constants/colors.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/imagefull.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/blocks/textbanner.dart';
import 'package:ergoweb/pages/layouts/webpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        ImageFull(
          imageUrl:
              'https://jimdo-storage.freetls.fastly.net/image/74253843/141bc384-d06e-4391-a28a-2bc45f52f216.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=1707',
          title: ErgoLocalizations.of(context).translate('first_string'),
          text: ErgoLocalizations.of(context).translate('second_string'),
        ),
        TextBanner(
          backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
          content: Texts.latoSubheader(
              'Besucht uns und unser Poster auf dem Ergotherapie-Kongress 2020 Weimar',
              Colors.white),
        ),
        ImageSide(
          isImageRight: false,
          contentBackgroundColor: Colors.black,
          imageUrl:
              'https://jimdo-storage.freetls.fastly.net/image/74237051/8b6a7de7-7251-4150-89af-0aba6ba3e616.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=1707',
          ttb: TitleTextButton(
            title: Align(
              alignment: Alignment.centerLeft,
              child: Texts.latoHeader('Kurse', Colors.white),
            ),
            text: Align(
              alignment: Alignment.centerLeft,
              child: Texts.latoText(
                  'Wir bieten euch über unsere Onlinekurse einfache Werkzeuge, um in eurer Praxis betätigungsorientiert, klientenzentriert und evidenzbasiert zu arbeiten.\nMacht euch gemeinsam mit eurem Team auf den Weg!',
                  Colors.white),
            ),
            button: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Texts.latoButtonText('Mehr lesen', Colors.black),
                ),
              ),
            ),
          ),
        ),
        ImageSide(
          isImageRight: true,
          contentBackgroundColor: Colors.white,
          imageUrl:
              'https://jimdo-storage.freetls.fastly.net/image/87074031/319bed59-2f84-4db2-a0a1-c0bad7a7b9d6.png?quality=80&auto=webp&disable=upscale&width=480&height=439',
          ttb: TitleTextButton(
            title: Align(
              alignment: Alignment.centerLeft,
              child: Texts.latoHeader(
                  'Ergotherapie im Wandel', ErgoColors.logoTextAccent),
            ),
            text: Texts.latoText(
                'In einer Studienarbeit haben wir untersucht, wie Teams in ambulanten Praxen ihre Arbeitsweise erfolgreich umstellen können, um modellgeleitete und moderne Ergotherapie anzubieten.\nDu hast Interesse an der wissenschaftlichen Basis und was hinter unseren Lernangeboten steckt?\nHier findet ihr unser Poster und weitere Ressourcen, um Hinter die Kulissen von Ergo-Unterwegs zu schauen! ',
                Colors.black),
            button: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: RaisedButton(
                color: Color.fromRGBO(44, 65, 104, 1.0),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Texts.latoButtonText('Mehr lesen', Colors.white),
                ),
              ),
            ),
          ),
        ),
        ImageSide(
          isImageRight: true,
          contentBackgroundColor: Color.fromRGBO(209, 210, 203, 1.0),
          imageUrl:
              'https://jimdo-storage.freetls.fastly.net/image/74236458/ea50ad42-9819-4473-aeb7-bd68f2ed14b3.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=1707',
          ttb: TitleTextButton(
            title: Align(
              alignment: Alignment.centerLeft,
              child: Texts.latoHeader('Über uns', ErgoColors.logoTextAccent),
            ),
            text: Texts.latoText(
                'Wir arbeiten beide in ambulanten  Ergotherapie- Praxen und haben selbst den Wandel zu modellgeleitetem Arbeiten gemeinsam im Team durchlaufen. Dabei entstand der Weg während wir ihn gegangen sind.\nDieser Prozess hat uns so gepackt, dass wir uns dann wissenschaftlich mit Lernerfahrungen im Team beschäftigt haben.\nSo verbinden wir Theorie und Praxis miteinander. Dieses Wissen möchten wir gerne mit euch teilen!\nMachen wir uns gemeinsam auf den Weg!',
                Colors.black),
            button: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: RaisedButton(
                color: Color.fromRGBO(44, 65, 104, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                onPressed: () {},
                child: Texts.latoButtonText('Mehr lesen', Colors.white),
              ),
            ),
          ),
        ),
        TextBanner(
          backgroundColor: Colors.black,
          content: TitleTextButton(
            title: Texts.latoSubheader('Interessiert?!', Colors.white),
            text: Texts.latoText(
                'Schreibt uns einfach über das Kontaktformular!\nWir freuen uns von euch zu hören!',
                Colors.white),
            button: RaisedButton(
              color: Colors.white,
              onPressed: () {},
              child: Texts.latoButtonText('Kontakt', Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
