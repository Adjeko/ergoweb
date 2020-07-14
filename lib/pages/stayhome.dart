import 'package:ergoweb/widgets/blocks/textbanner.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/footer.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/navbar/navbar.dart';

class StayHomePage extends StatelessWidget {
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
                    'https://jimdo-storage.freetls.fastly.net/image/91163506/c1292eda-b31f-42e0-9d4d-feb0d0d25a57.png?quality=80&auto=webp&disable=upscale&width=1023&height=1024',
                ttb: TitleTextButton(
                  title: Text(
                      'Bleib zuhause und gesund\nIn Balance mit Ergotherapie',
                      style:
                          TextStyle(color: Color.fromRGBO(44, 65, 104, 1.0))),
                  text: Text(
                      'In Quarantänezeiten sind Menschen aufgrund von Faktoren, die außerhalb ihrer Kontrolle liegen, von der Möglichkeit ausgeschlossen, an bedeutungsvollen Betätigungen teilzuhaben. Dies kann negative Auswirkungen auf dein Wohlbefinden und deine Gesundheit haben. Daher ist es gerade jetzt wichtig, eine Tagesstruktur zu schaffen und deine Betätigungen in Balance zu halten.\n\nHier kann dir Ergotherapie helfen!',
                      style: TextStyle(color: Colors.black)),
                  button: RaisedButton(
                    color: Color.fromRGBO(44, 65, 104, 1.0),
                    onPressed: () {},
                    child: Text('zum Flyer',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              TextBanner(
                backgroundColor: Color.fromRGBO(209, 210, 203, 1.0),
                content: TitleTextButton(
                  title: Text('Du hast Interesse an weiteren Angeboten? ',
                      style: TextStyle(color: Colors.white)),
                  text: Text('Dann schreib uns!',
                      style: TextStyle(color: Colors.white)),
                  button: RaisedButton(
                    color: Color.fromRGBO(229, 229, 229, 1.0),
                    onPressed: () {},
                    child:
                        Text('Kontakt', style: TextStyle(color: Colors.black)),
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
