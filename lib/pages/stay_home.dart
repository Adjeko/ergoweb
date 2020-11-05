import 'package:flutter/material.dart';
import 'package:ergoweb/ergoweb.dart';

class StayHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        // ImageSide(
        //   isImageRight: true,
        //   contentBackgroundColor: Colors.white,
        //   imageUrl:
        //       'https://jimdo-storage.freetls.fastly.net/image/91163506/c1292eda-b31f-42e0-9d4d-feb0d0d25a57.png?quality=80&auto=webp&disable=upscale&width=1023&height=1024',
        //   ttb: TitleTextButton(
        //     title: Column(
        //       children: [
        //         Align(
        //           alignment: Alignment.centerLeft,
        //           child: Texts.header(
        //               ErgoLocalizations.of(context)
        //                   .translate('stay_home_1_title'),
        //               ErgoColors.logoTextAccent),
        //         ),
        //         Align(
        //           alignment: Alignment.centerLeft,
        //           child: Texts.subheader(
        //               ErgoLocalizations.of(context)
        //                   .translate('stay_home_1_subtitle'),
        //               ErgoColors.logoTextAccent),
        //         ),
        //       ],
        //     ),
        //     text: Texts.text(
        //         ErgoLocalizations.of(context).translate('stay_home_1_text'),
        //         Colors.black),
        //     button: Row(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 30.0),
        //           child: RaisedButton(
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(4.0),
        //             ),
        //             color: Color.fromRGBO(44, 65, 104, 1.0),
        //             onPressed: () {},
        //             child: Padding(
        //               padding: const EdgeInsets.all(15.0),
        //               child: Texts.buttonText(
        //                   ErgoLocalizations.of(context)
        //                       .translate('stay_home_1_button_1'),
        //                   Colors.white),
        //             ),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 30.0),
        //           child: RaisedButton(
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(4.0),
        //             ),
        //             color: Color.fromRGBO(44, 65, 104, 1.0),
        //             onPressed: () {},
        //             child: Padding(
        //               padding: const EdgeInsets.all(15.0),
        //               child: Texts.buttonText(
        //                   ErgoLocalizations.of(context)
        //                       .translate('stay_home_1_button_2'),
        //                   Colors.white),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // TextBanner(
        //   backgroundColor: Color.fromRGBO(209, 210, 203, 1.0),
        //   content: TitleTextButton(
        //     title: Texts.subheader(
        //         ErgoLocalizations.of(context).translate('stay_home_2_title'),
        //         Colors.white),
        //     text: Texts.text(
        //         ErgoLocalizations.of(context).translate('stay_home_2_text'),
        //         Colors.white),
        //     button: RaisedButton(
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(4.0),
        //       ),
        //       color: Color.fromRGBO(229, 229, 229, 1.0),
        //       onPressed: () {},
        //       child: Padding(
        //         padding: const EdgeInsets.all(15.0),
        //         child: Texts.buttonText(
        //             ErgoLocalizations.of(context)
        //                 .translate('stay_home_2_button'),
        //             Colors.black),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
