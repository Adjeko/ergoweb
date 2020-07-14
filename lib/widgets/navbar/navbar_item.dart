import 'package:ergoweb/main.dart';
import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  final String text;
  final Widget nextPage;

  const NavbarItem({
    Key key,
    this.text,
    this.nextPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => nextPage),
            );
          },
          child: Text(
            this.text,
          ),
        ),
      ),
    );
  }
}
