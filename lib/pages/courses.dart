import 'package:ergoweb/config/constants/texts.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/blocks/footer.dart';
import 'package:ergoweb/widgets/navbar/navbar.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              ImageSide(
                isImageRight: false,
                contentBackgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
                imageUrl:
                    'https://jimdo-storage.freetls.fastly.net/image/74237140/caa2b127-7a03-4972-955c-2f5e2da3847e.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2246&height=2560&trim=0,1724,0,1065',
                ttb: TitleTextButton(
                  title: Texts.latoHeader('Kurse', Colors.white),
                  text: Texts.latoText(
                      'Unsere Online-Kurse bieten praxisnahes, aktuelles Ergotherapie-Wissen, auf den Punkt für euer Team.\nIhr entscheidet über Wissensinhalte, Ort und Zeit. Wir liefern praxisnahes Know-How und aktuelle Forschungsergebnisse.\nUnsere Videos könnt ihr in Teamsitzungen, an Fortbildungstagen, alleine oder gemeinsam ortsunabhängig nutzen. Zusätzlich möchten wir euch und euer Team dabei begleiten, das theoretische Wissen in eure Praxis zu übertragen. Jedes Modul beinhaltet neben fachlichem Wissen immer konkrete Praxistipps und Werkzeuge zur Anwendung in eurer praktischen Arbeit.\nGemeinsam machen wir uns mit euch auf den Weg hin zu betätigungsorientiertem und klientenzentriertem Arbeiten!',
                      Colors.white),
                  button: RaisedButton(
                    onPressed: () {},
                    child: Texts.latoButtonText('Kontakt', Colors.black),
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
