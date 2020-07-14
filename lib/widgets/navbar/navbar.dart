import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/Navbar/navbar_item.dart';
import 'package:ergoweb/widgets/Navbar/navbar_logo.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 75,
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.translate(
              offset: Offset(40.0, 0.0),
              child: NavbarLogo(),
            ),
            Transform.translate(
              offset: Offset(-50.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  NavbarItem(text: 'Home'),
                  NavbarItem(text: 'Bleib zuhause und gesund'),
                  NavbarItem(text: 'Ergotherapie im Wandel'),
                  NavbarItem(text: 'Kurse'),
                  NavbarItem(text: 'Über uns'),
                  NavbarItem(text: 'Kontakt'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
