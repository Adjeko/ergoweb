import 'package:ergoweb/pages/contact.dart';
import 'package:ergoweb/pages/courses.dart';
import 'package:ergoweb/pages/ergo_change.dart';
import 'package:ergoweb/pages/stay_home.dart';
import 'package:flutter/material.dart';

import 'package:ergoweb/config/constants/routes.dart';
import 'package:ergoweb/pages/about.dart';
import 'package:ergoweb/pages/home.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(
          settings: RouteSettings(name: HomeRoute),
          builder: (context) => HomePage());
    case AboutRoute:
      return MaterialPageRoute(
          settings: RouteSettings(name: AboutRoute),
          builder: (context) => AboutPage());
    case StayHomeRoute:
      return MaterialPageRoute(
          settings: RouteSettings(name: StayHomeRoute),
          builder: (context) => StayHomePage());
    case ErgoChangeRoute:
      return MaterialPageRoute(
          settings: RouteSettings(name: ErgoChangeRoute),
          builder: (context) => ErgoChangePage());
    case CoursesRoute:
      return MaterialPageRoute(
          settings: RouteSettings(name: CoursesRoute),
          builder: (context) => CoursesPage());
    case ContactRoute:
      return MaterialPageRoute(
          settings: RouteSettings(name: ContactRoute),
          builder: (context) => ContactPage());
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
