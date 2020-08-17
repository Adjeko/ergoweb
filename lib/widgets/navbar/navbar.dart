import 'package:flutter/material.dart';

import 'package:ergoweb/config/constants/routes.dart';
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
                    nextPageRoute: HomeRoute,
                  ),
                  NavbarItem(
                    text: 'Bleib zuhause und gesund',
                    nextPageRoute: StayHomeRoute,
                  ),
                  NavbarItem(
                    text: 'Ergotherapie im Wandel',
                    nextPageRoute: ErgoChangeRoute,
                  ),
                  NavbarItem(
                    text: 'Kurse',
                    nextPageRoute: CoursesRoute,
                  ),
                  NavbarItem(
                    text: 'Über uns',
                    nextPageRoute: AboutRoute,
                  ),
                  NavbarItem(
                    text: 'Kontakt',
                    nextPageRoute: ContactRoute,
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
