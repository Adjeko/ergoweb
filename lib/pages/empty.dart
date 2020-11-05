import 'package:flutter/material.dart';

import 'package:ergoweb/config/config.dart';
import 'package:ergoweb/services/services.dart';
import 'package:ergoweb/layouts/layouts.dart';
import 'package:ergoweb/widgets/widgets.dart';

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [],
    );
  }
}
