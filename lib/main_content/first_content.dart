import 'package:flutter/cupertino.dart';

class StarBucksContent {

  Widget image_content(String url) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          child: Image.asset(url),
        )
      ],
    );
  }
}