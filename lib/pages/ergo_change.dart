import 'package:flutter/material.dart';

import 'package:ergoweb/services/ergolocalizations.dart';
import 'package:ergoweb/config/constants/colors.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:ergoweb/pages/layouts/webpage.dart';
import 'package:ergoweb/widgets/block_elements/title_text_button.dart';
import 'package:ergoweb/widgets/blocks/imageside.dart';
import 'package:ergoweb/widgets/blocks/textbanner.dart';

class ErgoChangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        ImageSide(
          isImageRight: true,
          contentBackgroundColor: Colors.white,
          imageUrl:
              'https://jimdo-storage.freetls.fastly.net/image/87118133/98c0d631-1450-4dd7-a3fa-07b492a4802d.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=694&height=800&trim=32,0,180,0',
          ttb: TitleTextButton(
            title: Texts.latoHeader(
                ErgoLocalizations.of(context).translate('ergo_change_1_title'),
                ErgoColors.logoTextAccent),
            text: Texts.latoText(
                ErgoLocalizations.of(context).translate('ergo_change_1_text'),
                Colors.black),
            button: RaisedButton(
              color: Color.fromRGBO(44, 65, 104, 1.0),
              onPressed: () {},
              child: Texts.latoButtonText(
                  ErgoLocalizations.of(context)
                      .translate('ergo_change_1_button'),
                  Colors.white),
            ),
          ),
        ),
        TextBanner(
          backgroundColor: Color.fromRGBO(44, 65, 104, 1.0),
          content: Row(
            children: [
              Expanded(
                flex: 1,
                child: Texts.latoSubheader(
                    ErgoLocalizations.of(context)
                        .translate('ergo_change_2_title'),
                    Colors.white),
              ),
              Expanded(
                flex: 1,
                child: Texts.latoText(
                    ErgoLocalizations.of(context)
                        .translate('ergo_change_2_text'),
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
                    ErgoLocalizations.of(context)
                        .translate('ergo_change_3_title'),
                    ErgoColors.logoTextAccent),
              ),
              Expanded(
                flex: 1,
                child: Texts.latoText(
                    ErgoLocalizations.of(context)
                        .translate('ergo_change_3_text'),
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
                child: Texts.latoSubheader(
                    ErgoLocalizations.of(context)
                        .translate('ergo_change_4_title'),
                    Colors.white),
              ),
              Expanded(
                flex: 1,
                child: Texts.latoText(
                    ErgoLocalizations.of(context)
                        .translate('ergo_change_4_text'),
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
                    ErgoLocalizations.of(context)
                        .translate('ergo_change_5_title'),
                    ErgoColors.logoTextAccent),
              ),
              Expanded(
                flex: 1,
                child: Texts.latoText(
                    ErgoLocalizations.of(context)
                        .translate('ergo_change_5_text'),
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
                ErgoLocalizations.of(context).translate('ergo_change_6_title'),
                ErgoColors.logoTextAccent),
            text: Texts.latoText(
                ErgoLocalizations.of(context).translate('ergo_change_6_text'),
                Colors.black),
            button: RaisedButton(
              color: Color.fromRGBO(44, 65, 104, 1.0),
              onPressed: () {},
              child: Texts.latoButtonText(
                  ErgoLocalizations.of(context)
                      .translate('ergo_change_6_button'),
                  Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
