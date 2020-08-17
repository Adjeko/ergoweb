import 'package:ergoweb/pages/layouts/webpage.dart';
import 'package:flutter/material.dart';

class RecommendationPage extends StatelessWidget {
  final String args;

  const RecommendationPage({Key key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        Center(
          child: Text("Recommendation" + args),
        ),
      ],
    );
  }
}
