import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  final String text;

  const NavbarItem({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          this.text,
        ),
      ),
    );
  }
}
