import 'package:flutter/material.dart';

import 'package:ergoweb/widgets/Blocks/imagefull.dart';
import 'package:ergoweb/widgets/Blocks/textbanner.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ImageFull(),
        TextBanner(),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 255 / 290,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          'https://jimdo-storage.freetls.fastly.net/image/74237051/8b6a7de7-7251-4150-89af-0aba6ba3e616.jpg?format=pjpg&quality=80&auto=webp&disable=upscale&width=2560&height=1707'),
                    ),
                  ),
                  child: Text('t'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
