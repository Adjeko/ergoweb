import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  final String text;
  final String nextPageRoute;

  const NavbarItem({
    Key key,
    this.text,
    this.nextPageRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, this.nextPageRoute);
          },
          child: Text(
            this.text,
          ),
        ),
      ),
    );
  }
}
