import 'package:ergoweb/layouts/sidebysideblock.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/config/config.dart';
import 'package:ergoweb/services/services.dart';
import 'package:ergoweb/layouts/layouts.dart';
import 'package:ergoweb/widgets/widgets.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        FullSizeBlock(
          child: BackgroundImage(
            imageUrl:
                'https://jimdo-storage.freetls.fastly.net/image/74253843/141bc384-d06e-4391-a28a-2bc45f52f216.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=1707',
            child: TitleTextButton(
              title: Texts.header(
                  ErgoLocalizations.of(context).translate('home_1_title'),
                  ErgoColors.logoTextAccent),
              text: Texts.subheader(
                  ErgoLocalizations.of(context).translate('home_1_text'),
                  ErgoColors.logoTextAccent),
              button: null,
            ),
          ),
        ),
        FreeSizeBlock(
          backgroundColor: Colors.black,
          child: TitleTextButton(
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
        PictureAndContentBlock(
          backgroundColor: Colors.white,
          imageUrl:
              'https://jimdo-storage.freetls.fastly.net/image/74237051/8b6a7de7-7251-4150-89af-0aba6ba3e616.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=1707',
          side: ImageSide.left,
          child: Text("HAllo WELT"),
        ),
        SideBySideBlock(
          backgroundColor: Colors.white,
          leftchild: Text("LINKS"),
          rightchild: Text("RECHTS"),
        )
      ],
    );
  }
}
