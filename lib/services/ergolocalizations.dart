import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ErgoLocalizations {
  final Locale locale;

  ErgoLocalizations(this.locale);

  // Helper method to keep the code in the widgets concise
  // Localizations are accessed using an InheritedWidget "of" syntax
  static ErgoLocalizations of(BuildContext context) {
    return Localizations.of<ErgoLocalizations>(context, ErgoLocalizations);
  }

  // Static member to have a simple access to the delegate from the MaterialApp
  static const LocalizationsDelegate<ErgoLocalizations> delegate =
      _ErgoLocalizationsDelegate();

  Map<String, String> _localizedStrings;

  Future<bool> load() async {
    // Load the language JSON file from the "lang" folder
    String jsonString = await rootBundle
        .loadString('assets/language/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  // This method will be called from every widget which needs a localized text
  String translate(String key) {
    return _localizedStrings[key];
  }
}

// LocalizationsDelegate is a factory for a set of localized resources
// In this case, the localized strings will be gotten in an AppLocalizations object
class _ErgoLocalizationsDelegate
    extends LocalizationsDelegate<ErgoLocalizations> {
  // This delegate instance will never change (it doesn't even have fields!)
  // It can provide a constant constructor.
  const _ErgoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Include all of your supported language codes here
    return ['de'].contains(locale.languageCode);
  }

  @override
  Future<ErgoLocalizations> load(Locale locale) async {
    // AppLocalizations class is where the JSON loading actually runs
    ErgoLocalizations localizations = new ErgoLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_ErgoLocalizationsDelegate old) => false;
}
