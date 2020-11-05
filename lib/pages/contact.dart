import 'package:flutter/material.dart';
import 'package:ergoweb/ergoweb.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Texts.subheader(
                    ErgoLocalizations.of(context).translate('contact_1_title'),
                    ErgoColors.logoTextAccent),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Name'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                child: Texts.buttonText('Absenden', Colors.white),
              ),
            ],
          ),
        ),
        FreeSizeBlock(
          backgroundColor: Color.fromRGBO(209, 210, 203, 1.0),
          child: Texts.subheader(
              ErgoLocalizations.of(context).translate('contact_2_text'),
              ErgoColors.logoTextAccent),
        ),
      ],
    );
  }
}
