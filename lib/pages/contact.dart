import 'package:ergoweb/config/constants/colors.dart';
import 'package:ergoweb/config/constants/texts.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/navbar/navbar.dart';
import 'package:ergoweb/widgets/blocks/footer.dart';
import 'package:ergoweb/widgets/blocks/textbanner.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Texts.latoSubheader('Möchtet ihr mehr erfahren?',
                          ErgoColors.logoTextAccent),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextField(
                              decoration: InputDecoration(hintText: 'Name'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextField(
                              decoration: InputDecoration(hintText: 'Email'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Nachricht'),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                            'Ich habe die Datenschutzerklärung zur Kenntnis genommen und erkläre mich damit einverstanden.'),
                      ],
                    ),
                    RaisedButton(
                      color: Color.fromRGBO(44, 65, 104, 1.0),
                      onPressed: () {},
                      child: Texts.latoButtonText('Absenden', Colors.white),
                    ),
                  ],
                ),
              ),
              TextBanner(
                backgroundColor: Color.fromRGBO(209, 210, 203, 1.0),
                content: Texts.latoSubheader(
                    'Besucht uns und unser Poster auf dem Ergotherapie-Kongress 2020 in Weimar',
                    ErgoColors.logoTextAccent),
              ),
              Footer(),
            ],
          ),
          Navbar(),
        ],
      ),
    );
  }
}
