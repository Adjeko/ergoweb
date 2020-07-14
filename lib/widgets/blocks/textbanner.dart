import 'package:flutter/material.dart';

class TextBanner extends StatelessWidget {
  const TextBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(44, 65, 104, 1.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height / 2,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Besucht uns und unser Poster auf dem Ergotherapie-Kongress 2020 Weimar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
