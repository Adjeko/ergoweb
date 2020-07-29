import 'package:ergoweb/config/constants/colors.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ergoweb/widgets/block_elements/title_text_button.dart';

class ImageFull extends StatelessWidget {
  const ImageFull({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child: Image.network(
                'https://jimdo-storage.freetls.fastly.net/image/74253843/141bc384-d06e-4391-a28a-2bc45f52f216.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=1707',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Opacity(
              opacity: 0.8,
              child: Container(
                color: Colors.white,
              ),
            ),
            Center(
              child: TitleTextButton(
                title: Texts.latoHeader(
                    'Gemeinsam auf dem Weg', ErgoColors.logoTextAccent),
                text: Texts.latoSubheader(
                    'Wir gestalten mit euch die Ergotherapie der Zukunft',
                    ErgoColors.logoTextAccent),
                button: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
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
          ],
        ));
  }
}
