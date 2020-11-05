import 'package:flutter/material.dart';
import 'package:ergoweb/ergoweb.dart';

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
