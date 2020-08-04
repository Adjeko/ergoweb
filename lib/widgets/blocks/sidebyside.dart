import 'package:ergoweb/config/constants/texts.dart';
import 'package:ergoweb/services/ergolocalizations.dart';
import 'package:ergoweb/widgets/block_elements/half_side_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBySide extends StatelessWidget {
  const SideBySide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(44, 65, 104, 1.0),
        child: Column(
          children: [
            Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Texts.header(
                    ErgoLocalizations.of(context).translate('about_2_title'),
                    Colors.white),
              ),
            ),
            Container(
              color: Color.fromRGBO(44, 65, 104, 1.0),
              child: Row(
                children: [
                  HalfSideContent(
                    backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
                    content: Column(
                      children: [
                        Image.network(
                            'https://jimdo-storage.freetls.fastly.net/image/74236941/ac32471b-edd0-4cff-934b-3cffb0641017.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2458&trim=0,385,0,1587',
                            height: MediaQuery.of(context).size.height / 1.75),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Texts.header(
                              ErgoLocalizations.of(context)
                                  .translate('about_2_left_name'),
                              Colors.white),
                        ),
                        Texts.text(
                            ErgoLocalizations.of(context)
                                .translate('about_2_left_text'),
                            Colors.white),
                      ],
                    ),
                  ),
                  HalfSideContent(
                    backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
                    content: Column(
                      children: [
                        Image.network(
                          'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
                          height: MediaQuery.of(context).size.height / 1.75,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Texts.header(
                              ErgoLocalizations.of(context)
                                  .translate('about_2__right_name'),
                              Colors.white),
                        ),
                        Texts.text(
                            ErgoLocalizations.of(context)
                                .translate('about_2__right_text'),
                            Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
