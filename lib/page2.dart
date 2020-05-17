import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String title;
  Page2(this.title);
  // Page2(this.title) : assert(title != null, 'Title must has data');
  // 測試階段才用上面那行，為了要讓'Title must has data'顯示在螢幕上
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
    );
  }
}