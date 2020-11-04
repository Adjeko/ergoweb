import 'package:ergoweb/services/ergolocalizations.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/config/constants/colors.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:ergoweb/widgets/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/imagefull.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/blocks/textbanner.dart';
import 'package:ergoweb/layouts/layouts.dart';

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
          title: ErgoLocalizations.of(context).translate('home_1_title'),
          text: ErgoLocalizations.of(context).translate('home_1_text'),
          buttons: RaisedButton(
            color: ErgoColors.logoTextAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Texts.buttonText(
                  ErgoLocalizations.of(context).translate('home_1_button'),
                  Colors.white),
            ),
          ),
        ),
        TextBanner(
          backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
          content: Texts.subheader(
              ErgoLocalizations.of(context).translate('home_2_text'),
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
              child: Texts.header(
                  ErgoLocalizations.of(context).translate('home_3_title'),
                  Colors.white),
            ),
            text: Align(
              alignment: Alignment.centerLeft,
              child: Texts.text(
                  ErgoLocalizations.of(context).translate('home_3_text'),
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
                  child: Texts.buttonText(
                      ErgoLocalizations.of(context).translate('home_3_button'),
                      Colors.black),
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
              child: Texts.header(
                  ErgoLocalizations.of(context).translate('home_4_title'),
                  ErgoColors.logoTextAccent),
            ),
            text: Texts.text(
                ErgoLocalizations.of(context).translate('home_4_text'),
                Colors.black),
            button: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: RaisedButton(
                color: Color.fromRGBO(44, 65, 104, 1.0),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Texts.buttonText(
                      ErgoLocalizations.of(context).translate('home_4_button'),
                      Colors.white),
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
              child: Texts.header(
                  ErgoLocalizations.of(context).translate('home_5_title'),
                  ErgoColors.logoTextAccent),
            ),
            text: Texts.text(
                ErgoLocalizations.of(context).translate('home_5_text'),
                Colors.black),
            button: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: RaisedButton(
                color: Color.fromRGBO(44, 65, 104, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Texts.buttonText(
                      ErgoLocalizations.of(context).translate('home_5_button'),
                      Colors.white),
                ),
              ),
            ),
          ),
        ),
        TextBanner(
          backgroundColor: Colors.black,
          content: TitleTextButton(
            title: Texts.subheader(
                ErgoLocalizations.of(context).translate('home_6_title'),
                Colors.white),
            text: Texts.text(
                ErgoLocalizations.of(context).translate('home_6_text'),
                Colors.white),
            button: RaisedButton(
              color: Colors.white,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Texts.buttonText(
                    ErgoLocalizations.of(context).translate('home_6_button'),
                    Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
