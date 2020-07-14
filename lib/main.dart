import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/Navbar/navbar.dart';
import 'package:ergoweb/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ergo-Unterwegs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyStartPage(title: 'Ergo-Unterwegs'),
    );
  }
}

class MyStartPage extends StatelessWidget {
  final String title;

  const MyStartPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomePage(),
          Navbar(),
        ],
      ),
    );
  }
}
