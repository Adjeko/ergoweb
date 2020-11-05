import 'package:ergoweb/pages/contact.dart';
import 'package:ergoweb/pages/courses.dart';
import 'package:ergoweb/pages/ergo_change.dart';
import 'package:ergoweb/pages/stay_home.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/config/constants/routes.dart';
import 'package:ergoweb/pages/about.dart';
import 'package:ergoweb/pages/home.dart';
import 'package:ergoweb/pages/pages.dart';

class Path {
  const Path(this.pattern, this.builder);

  final String pattern;
  final Widget Function(BuildContext, String) builder;
}

List<Path> paths = [
  // Path(
  //   r'^/article/([\w-]+)$',
  //   (context, match) => Article.getArticlePage(match),
  // ),
  Path(
    r'^' + HomeRoute,
    (context, match) => HomePage(),
  ),
  Path(
    r'^' + AboutRoute,
    (context, match) => AboutPage(),
  ),
  Path(
    r'^' + StayHomeRoute,
    (context, match) => StayHomePage(),
  ),
  Path(
    r'^' + ErgoChangeRoute,
    (context, match) => ErgoChangePage(),
  ),
  Path(
    r'^' + CoursesRoute,
    (context, match) => CoursesPage(),
  ),
  Path(
    r'^' + ContactRoute,
    (context, match) => ContactPage(),
  ),
  Path(
    r'^' + TestRoute,
    (context, match) => TestPage(),
  ),
  Path(
    r'^' + EmptyRoute,
    (context, match) => EmptyPage(),
  ),
];

Route<dynamic> generateRoute(RouteSettings settings) {
  for (Path path in paths) {
    final regExpPattern = RegExp(path.pattern);
    if (regExpPattern.hasMatch(settings.name)) {
      final firstMatch = regExpPattern.firstMatch(settings.name);
      final match = (firstMatch.groupCount == 1) ? firstMatch.group(1) : null;
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => path.builder(context, match),
      );
    }
  }

  return MaterialPageRoute(
    settings: RouteSettings(name: TestRoute),
    builder: (context) => TestPage(),
  );
  // return MaterialPageRoute(
  //   settings: RouteSettings(name: HomeRoute),
  //   builder: (context) => HomePage(),
  // );
}
