import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:ergoweb/config/constants/routes.dart';
import 'package:ergoweb/pages/recommendation.dart';
import 'package:ergoweb/pages/home.dart';
import 'package:ergoweb/pages/about.dart';
import 'package:ergoweb/pages/contact.dart';
import 'package:ergoweb/pages/courses.dart';
import 'package:ergoweb/pages/ergo_change.dart';
import 'package:ergoweb/pages/stay_home.dart';

class FluroRouter {
  static Router router = Router();

  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomePage());

  static Handler _aboutHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          AboutPage());

  static Handler _stayHomeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          StayHomePage());

  static Handler _ergoChangeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ErgoChangePage());

  static Handler _coursesHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CoursesPage());

  static Handler _contactHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ContactPage());

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          RecommendationPage(args: params['id'][0]));

  static void setupRouter() {
    router.define(
      HomeRoute,
      handler: _homeHandler,
    );
    router.define(
      AboutRoute,
      handler: _aboutHandler,
    );
    router.define(
      StayHomeRoute,
      handler: _stayHomeHandler,
    );
    router.define(
      ErgoChangeRoute,
      handler: _ergoChangeHandler,
    );
    router.define(
      CoursesRoute,
      handler: _coursesHandler,
    );
    router.define(
      ContactRoute,
      handler: _contactHandler,
    );
    router.define(
      RecommendationRoute + '/:id',
      handler: _loginHandler,
    );
  }
}
