import 'package:flutter/material.dart';

import 'package:ergoweb/components/footer.dart';
import 'package:ergoweb/widgets/navbar/navbar.dart';

class WebPage extends StatelessWidget {
  final List<Widget> children;

  const WebPage({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    children.add(Footer());

    return Scaffold(
      body: Stack(
        children: [
          Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: ListView(
              controller: _scrollController,
              children: children,
            ),
          ),
          Navbar(
            scroll: _scrollController,
          ),
        ],
      ),
    );
  }
}
