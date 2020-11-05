import 'package:ergoweb/layouts/gridblock.dart';
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
          backgroundColor: Colors.blue,
          onTop: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Texts.header(
                  ErgoLocalizations.of(context).translate('about_2_title'),
                  Colors.white),
            ),
          ),
          leftchild: ImageTitleTextButton(
            imageUrl:
                'https://jimdo-storage.freetls.fastly.net/image/74236941/ac32471b-edd0-4cff-934b-3cffb0641017.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2458&trim=0,385,0,1587',
            title: Align(
              alignment: Alignment.centerLeft,
              child: Texts.header(
                  ErgoLocalizations.of(context).translate('about_2_left_name'),
                  Colors.white),
            ),
            text: Texts.text(
                ErgoLocalizations.of(context).translate('about_2_left_text'),
                Colors.white),
            button: null,
          ),
          rightchild: ImageTitleTextButton(
            imageUrl:
                'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
            title: Align(
              alignment: Alignment.centerLeft,
              child: Texts.header(
                  ErgoLocalizations.of(context)
                      .translate('about_2__right_name'),
                  Colors.white),
            ),
            text: Texts.text(
                ErgoLocalizations.of(context).translate('about_2__right_text'),
                Colors.white),
            button: null,
          ),
        ),
        GridBlock(
          backgroundColor: Colors.blue,
          onTop: Texts.header("Grid Übersicht", Colors.white),
          children: [
            ImageTitleTextButton(
              imageUrl:
                  'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
              title: Align(
                alignment: Alignment.centerLeft,
                child: Texts.header(
                    ErgoLocalizations.of(context)
                        .translate('about_2__right_name'),
                    Colors.white),
              ),
              text: Texts.text(
                  ErgoLocalizations.of(context)
                      .translate('about_2__right_text'),
                  Colors.white),
              button: null,
            ),
            ImageTitleTextButton(
              imageUrl:
                  'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
              title: Align(
                alignment: Alignment.centerLeft,
                child: Texts.header(
                    ErgoLocalizations.of(context)
                        .translate('about_2__right_name'),
                    Colors.white),
              ),
              text: Texts.text(
                  ErgoLocalizations.of(context)
                      .translate('about_2__right_text'),
                  Colors.white),
              button: null,
            ),
            ImageTitleTextButton(
              imageUrl:
                  'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
              title: Align(
                alignment: Alignment.centerLeft,
                child: Texts.header(
                    ErgoLocalizations.of(context)
                        .translate('about_2__right_name'),
                    Colors.white),
              ),
              text: Texts.text(
                  ErgoLocalizations.of(context)
                      .translate('about_2__right_text'),
                  Colors.white),
              button: null,
            ),
            ImageTitleTextButton(
              imageUrl:
                  'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
              title: Align(
                alignment: Alignment.centerLeft,
                child: Texts.header(
                    ErgoLocalizations.of(context)
                        .translate('about_2__right_name'),
                    Colors.white),
              ),
              text: Texts.text(
                  ErgoLocalizations.of(context)
                      .translate('about_2__right_text'),
                  Colors.white),
              button: null,
            ),
            ImageTitleTextButton(
              imageUrl:
                  'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
              title: Align(
                alignment: Alignment.centerLeft,
                child: Texts.header(
                    ErgoLocalizations.of(context)
                        .translate('about_2__right_name'),
                    Colors.white),
              ),
              text: Texts.text(
                  ErgoLocalizations.of(context)
                      .translate('about_2__right_text'),
                  Colors.white),
              button: null,
            ),
            ImageTitleTextButton(
              imageUrl:
                  'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
              title: Align(
                alignment: Alignment.centerLeft,
                child: Texts.header(
                    ErgoLocalizations.of(context)
                        .translate('about_2__right_name'),
                    Colors.white),
              ),
              text: Texts.text(
                  ErgoLocalizations.of(context)
                      .translate('about_2__right_text'),
                  Colors.white),
              button: null,
            ),
            ImageTitleTextButton(
              imageUrl:
                  'https://jimdo-storage.freetls.fastly.net/image/74237139/0b844be8-3894-4e74-8637-2d3962f5c477.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=2560&trim=0,1120,0,1120',
              title: Align(
                alignment: Alignment.centerLeft,
                child: Texts.header(
                    ErgoLocalizations.of(context)
                        .translate('about_2__right_name'),
                    Colors.white),
              ),
              text: Texts.text(
                  ErgoLocalizations.of(context)
                      .translate('about_2__right_text'),
                  Colors.white),
              button: null,
            ),
          ],
        ),
      ],
    );
  }
}
