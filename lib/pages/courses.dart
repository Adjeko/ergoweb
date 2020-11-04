import 'package:flutter/material.dart';

import 'package:ergoweb/services/ergolocalizations.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:ergoweb/layouts/layouts.dart';
import 'package:ergoweb/widgets/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        ImageSide(
          isImageRight: false,
          contentBackgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
          imageUrl:
              'https://jimdo-storage.freetls.fastly.net/image/74237140/caa2b127-7a03-4972-955c-2f5e2da3847e.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2246&height=2560&trim=0,1724,0,1065',
          ttb: TitleTextButton(
            title: Align(
              alignment: Alignment.centerLeft,
              child: Texts.header(
                  ErgoLocalizations.of(context).translate('courses_1_title'),
                  Colors.white),
            ),
            text: Align(
              alignment: Alignment.centerLeft,
              child: Texts.text(
                  ErgoLocalizations.of(context).translate('courses_1_text'),
                  Colors.white),
            ),
            button: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Texts.buttonText(
                          ErgoLocalizations.of(context)
                              .translate('courses_1_button_1'),
                          Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Texts.buttonText(
                          ErgoLocalizations.of(context)
                              .translate('courses_1_button_2'),
                          Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
