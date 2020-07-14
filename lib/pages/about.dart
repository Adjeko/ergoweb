import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/navbar/navbar.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/footer.dart';
import 'package:ergoweb/widgets/blocks/sidebyside.dart';

class AboutPage extends StatelessWidget {
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
                    'https://jimdo-storage.freetls.fastly.net/image/74324891/965a5cb6-7a8c-48bc-9b6c-b2d995ab43cd.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=1825&height=2560&trim=0,1388,0,1619',
                ttb: TitleTextButton(
                  title: Text('Wege entstehen dadurch, dass man sie geht.',
                      style:
                          TextStyle(color: Color.fromRGBO(44, 65, 104, 1.0))),
                  text: Text(
                      'Wir arbeiten beide in ambulanten  Ergotherapie- Praxen und haben selbst den Wandel zu modellgeleitetem Arbeiten gemeinsam im Team durchlaufen. Dabei entstand der Weg während wir ihn gegangen sind.\nDieser Prozess hat uns so gepackt, dass wir uns dann wissenschaftlich im Rahmen unseres Bachelorarbeit damit beschäftigt haben.\nSomit verbinden wir Theorie und Praxis miteinander. Dieses Wissen möchten wir gerne mit euch teilen! Machen wir uns gemeinsam auf den Weg!',
                      style: TextStyle(color: Colors.black)),
                  button: RaisedButton(
                    color: Color.fromRGBO(44, 65, 104, 1.0),
                    onPressed: () {},
                    child: Text('Mehr lesen',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SideBySide(),
              Footer(),
            ],
          ),
          Navbar(),
        ],
      ),
    );
  }
}
