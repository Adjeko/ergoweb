import 'package:flutter/material.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://jimdo-storage.freetls.fastly.net/image/74226557/0a7bd291-f0c0-492b-800a-59224e6d7b72.png?quality=80&auto=webp&disable=upscale&width=480&height=174&trim=0,0,0,0 480w,",
      width: 122,
    );
  }
}
