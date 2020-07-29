import 'package:flutter/material.dart';

import 'package:ergoweb/pages/about.dart';
import 'package:ergoweb/pages/contact.dart';
import 'package:ergoweb/pages/home.dart';
import 'package:ergoweb/pages/courses.dart';
import 'package:ergoweb/pages/ergo_change.dart';
import 'package:ergoweb/pages/stay_home.dart';
import 'package:ergoweb/widgets/navbar/navbar_item.dart';
import 'package:ergoweb/widgets/navbar/navbar_logo.dart';

class Navbar extends StatefulWidget {
  final ScrollController scroll;

  const Navbar({
    Key key,
    this.scroll,
  }) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  Color _backgroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    widget.scroll.addListener(() {
      this.setState(() {
        if (widget.scroll.offset > 0) {
          _backgroundColor = Colors.grey[300];
        } else {
          _backgroundColor = Colors.transparent;
        }
      });
    });

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 75,
      child: Container(
        color: _backgroundColor,
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
                  NavbarItem(
                    text: 'Home',
                    nextPage: HomePage(),
                  ),
                  NavbarItem(
                    text: 'Bleib zuhause und gesund',
                    nextPage: StayHomePage(),
                  ),
                  NavbarItem(
                    text: 'Ergotherapie im Wandel',
                    nextPage: ErgoChangePage(),
                  ),
                  NavbarItem(
                    text: 'Kurse',
                    nextPage: CoursesPage(),
                  ),
                  NavbarItem(
                    text: 'Über uns',
                    nextPage: AboutPage(),
                  ),
                  NavbarItem(
                    text: 'Kontakt',
                    nextPage: ContactPage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
