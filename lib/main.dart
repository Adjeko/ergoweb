import 'package:flutter/material.dart';

import 'package:ergoweb/pages/home.dart';
import 'package:ergoweb/pages/contact.dart';

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
      home: ContactPage(),
    );
  }
}
