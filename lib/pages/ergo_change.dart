import 'package:ergoweb/config/constants/colors.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/blocks/footer.dart';
import 'package:ergoweb/widgets/blocks/textbanner.dart';
import 'package:ergoweb/widgets/navbar/navbar.dart';

class ErgoChangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              ImageSide(
                isImageRight: true,
                contentBackgroundColor: Colors.white,
                imageUrl:
                    'https://jimdo-storage.freetls.fastly.net/image/87118133/98c0d631-1450-4dd7-a3fa-07b492a4802d.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=694&height=800&trim=32,0,180,0',
                ttb: TitleTextButton(
                  title: Texts.latoHeader(
                      'Ergotherapie im Wandel', ErgoColors.logoTextAccent),
                  text: Texts.latoText(
                      'Hier möchten wir euch die wichtigsten Ergebnisse unserer Studienarbeit präsentieren. ',
                      Colors.black),
                  button: RaisedButton(
                    color: Color.fromRGBO(44, 65, 104, 1.0),
                    onPressed: () {},
                    child: Texts.latoButtonText('zum Poster', Colors.white),
                  ),
                ),
              ),
              TextBanner(
                backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
                content: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Texts.latoSubheader('Ausgangslage', Colors.white),
                    ),
                    Expanded(
                      flex: 1,
                      child: Texts.latoText(
                          'Das Arbeiten nach ergotherapeutischen Praxismodellen verbessert nachweislich die Zufriedenheit der Therapeut*innen und Klient*innen sowie Therapieergebnisse. Die Implementierung modellgeleiteter Vorgehensweisen in Deutschland erfolgt jedoch zögerlich. ',
                          Colors.white),
                    ),
                  ],
                ),
              ),
              TextBanner(
                backgroundColor: Colors.white,
                content: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Texts.latoSubheader(
                          'Forschungsfrage', ErgoColors.logoTextAccent),
                    ),
                    Expanded(
                      flex: 1,
                      child: Texts.latoText(
                          'Wie gestalten Ergotherapeuten in ambulanten Praxen den selbstgesteuerten Umstellungsprozess?',
                          ErgoColors.logoTextAccent),
                    ),
                  ],
                ),
              ),
              TextBanner(
                backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
                content: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Texts.latoSubheader('Ergebnisse', Colors.white),
                    ),
                    Expanded(
                      flex: 1,
                      child: Texts.latoText(
                          'Ergotherapeut*innen gestalten den Umstellungsprozess anhand eines gemeinsamen Lernprozesses. Dieser lässt sich in Phasen nach etablierten Change-Management Modellen einteilen.\nEine offene Kommunikationskultur und gemeinsames Vorgehen, stellen die Basis dar, und ermöglichen einen Kreislauf der Wissensimplementierung im Team zu entwickeln und zu etablieren.\nAußerdem konnten wir konkrete Ressourcen und Barrieren im Prozessverlauf, sowie individuelle Lösungsstrategien der einzelnen Teams identifizieren. Des Weiteren wurde die Kooperation mit dem Klientel als relevanter Faktor identifiziert. ',
                          Colors.white),
                    ),
                  ],
                ),
              ),
              TextBanner(
                backgroundColor: Colors.white,
                content: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Texts.latoSubheader(
                          'Schlussfolgerung', ErgoColors.logoTextAccent),
                    ),
                    Expanded(
                      flex: 1,
                      child: Texts.latoText(
                          'Die Ergebnisse zeigen Möglichkeiten zur erfolgreichen Implementierung internationaler ergotherapeutischer Praxismodelle in Deutschland. Change Modelle können Orientierung bieten, um selbstgesteuerte Umstellungsprozesse im Team gemeinschaftlich zu gestalten.',
                          ErgoColors.logoTextAccent),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color.fromRGBO(44, 65, 104, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Image.network(
                      'https://jimdo-storage.freetls.fastly.net/image/87121032/a7309e46-5f05-4e3a-a296-5247b846805c.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=1808&trim=0,0,0,0'),
                ),
              ),
              TextBanner(
                backgroundColor: Colors.white,
                content: TitleTextButton(
                  title: Texts.latoSubheader(
                      'Du hast Fragen oder möchtest mehr wissen?',
                      ErgoColors.logoTextAccent),
                  text: Texts.latoText(
                      'Dann kontaktier uns!\nWir freuen uns, von dir zu hören!',
                      Colors.black),
                  button: RaisedButton(
                    color: Color.fromRGBO(44, 65, 104, 1.0),
                    onPressed: () {},
                    child: Texts.latoButtonText('Kontakt', Colors.white),
                  ),
                ),
              ),
              Footer(),
            ],
          ),
          Navbar(),
        ],
      ),
    );
  }
}
