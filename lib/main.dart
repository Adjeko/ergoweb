import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:ergoweb/services/ergolocalizations.dart';
import 'package:ergoweb/services/router.dart';
import 'package:ergoweb/config/constants/routes.dart';

void main() {
  FluroRouter.setupRouter();
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
      supportedLocales: [
        Locale('de', 'DE'),
      ],
      localizationsDelegates: [
        // A class which loads the translations from JSON files
        ErgoLocalizations.delegate,
        // Built-in localization of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built-in localization for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return supportedLocales.first;
      },
      onGenerateRoute: FluroRouter.router.generator,
      initialRoute: HomeRoute,
      // home: HomePage(),
    );
  }
}
