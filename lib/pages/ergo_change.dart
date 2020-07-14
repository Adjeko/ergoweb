import 'package:ergoweb/widgets/Blocks/textbanner.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/blocks/footer.dart';
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
                  title: Text('Ergotherapie im Wandel',
                      style:
                          TextStyle(color: Color.fromRGBO(44, 65, 104, 1.0))),
                  text: Text(
                      'Hier möchten wir euch die wichtigsten Ergebnisse unserer Studienarbeit präsentieren. ',
                      style: TextStyle(color: Colors.black)),
                  button: RaisedButton(
                    color: Color.fromRGBO(44, 65, 104, 1.0),
                    onPressed: () {},
                    child: Text('zum Poster',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              TextBanner(
                backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
                content: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Ausgangslage',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Das Arbeiten nach ergotherapeutischen Praxismodellen verbessert nachweislich die Zufriedenheit der Therapeut*innen und Klient*innen sowie Therapieergebnisse. Die Implementierung modellgeleiteter Vorgehensweisen in Deutschland erfolgt jedoch zögerlich. ',
                        style: TextStyle(color: Colors.white),
                      ),
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
                      child: Text(
                        'Forschungsfrage',
                        style: TextStyle(
                          color: Color.fromRGBO(44, 65, 104, 1.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Wie gestalten Ergotherapeuten in ambulanten Praxen den selbstgesteuerten Umstellungsprozess?',
                        style: TextStyle(
                          color: Color.fromRGBO(44, 65, 104, 1.0),
                        ),
                      ),
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
                      child: Text(
                        'Ergebnisse',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Ergotherapeut*innen gestalten den Umstellungsprozess anhand eines gemeinsamen Lernprozesses. Dieser lässt sich in Phasen nach etablierten Change-Management Modellen einteilen.\nEine offene Kommunikationskultur und gemeinsames Vorgehen, stellen die Basis dar, und ermöglichen einen Kreislauf der Wissensimplementierung im Team zu entwickeln und zu etablieren.\nAußerdem konnten wir konkrete Ressourcen und Barrieren im Prozessverlauf, sowie individuelle Lösungsstrategien der einzelnen Teams identifizieren. Des Weiteren wurde die Kooperation mit dem Klientel als relevanter Faktor identifiziert. ',
                        style: TextStyle(color: Colors.white),
                      ),
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
                      child: Text(
                        'Schlussfolgerung',
                        style: TextStyle(
                          color: Color.fromRGBO(44, 65, 104, 1.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Die Ergebnisse zeigen Möglichkeiten zur erfolgreichen Implementierung internationaler ergotherapeutischer Praxismodelle in Deutschland. Change Modelle können Orientierung bieten, um selbstgesteuerte Umstellungsprozesse im Team gemeinschaftlich zu gestalten.',
                        style: TextStyle(
                          color: Color.fromRGBO(44, 65, 104, 1.0),
                        ),
                      ),
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
                  title: Text(
                    'Du hast Fragen oder möchtest mehr wissen?',
                    style: TextStyle(
                      color: Color.fromRGBO(44, 65, 104, 1.0),
                    ),
                  ),
                  text: Text(
                    'Dann kontaktier uns!\nWir freuen uns, von dir zu hören!',
                    style: TextStyle(color: Colors.black),
                  ),
                  button: RaisedButton(
                    color: Color.fromRGBO(44, 65, 104, 1.0),
                    onPressed: () {},
                    child: Text(
                      'Kontakt',
                      style: TextStyle(color: Colors.white),
                    ),
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
