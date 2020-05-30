import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Page2 extends StatelessWidget {
  // final String title;
  // final String photoName;
  // Page2(this.title, this.photoName);
  // Page2(this.title) : assert(title != null, 'Title must has data');
  // 測試階段才用上面那行，為了要讓'Title must has data'顯示在螢幕上
  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('${args['title']}'),
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop('From page2');
          },
        ),
      ),
      body: PhotoView(
        maxScale: 2.0,
        minScale: 0.2,
        imageProvider: AssetImage(args['photoName']),
      ),
    );
  }
}