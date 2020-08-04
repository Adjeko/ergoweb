import 'package:flutter/material.dart';

import 'package:ergoweb/services/ergolocalizations.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:ergoweb/pages/layouts/webpage.dart';
import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
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
            title: Texts.header(
                ErgoLocalizations.of(context).translate('courses_1_title'),
                Colors.white),
            text: Texts.text(
                ErgoLocalizations.of(context).translate('courses_1_text'),
                Colors.white),
            button: RaisedButton(
              onPressed: () {},
              child: Texts.buttonText(
                  ErgoLocalizations.of(context).translate('courses_1_button'),
                  Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
