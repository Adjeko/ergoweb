import 'dart:ui' as ui;
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:ergoweb/ergoweb.dart';

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebPage(
      children: [
        ReachFrame(),
      ],
    );
  }
}

class ReachFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IFrameElement _iframeElement = IFrameElement();

    _iframeElement.height = '700';
    _iframeElement.width = '500';
    _iframeElement.src = 'https://reach.at/adjeko';
    _iframeElement.style.border = 'none';
    // _iframeElement.style.overflow = "hidden";
    // _iframeElement.style.overflowX = "hidden";
    // _iframeElement.style.overflowY = "hidden";
    // _iframeElement.style.position = "absolute";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );

    Widget _iframeWidget;

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );

    return SizedBox(
      height: 700, //MediaQuery.of(context).size.height,
      width: 500, //MediaQuery.of(context).size.width,
      child: _iframeWidget,
    );
  }
}

// <!DOCTYPE html>
//     <html>
//       <body>
//          <iframe src="https://reach.at/adjeko" frameborder="0" style="overflow:hidden;overflow-x:hidden;overflow-y:hidden;height:100%;width:100%;position:absolute;top:0px;left:0px;right:0px;bottom:0px" height="100%" width="100%"></iframe>
//       </body>
//     </html>
