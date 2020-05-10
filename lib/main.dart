import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Photo Show',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.amber
          ),
        )
      ),
      body: Column(
        children: <Widget>[
          Image.network('https://yhq.tw/wp-content/uploads/2018082418004496.png'),
          Image.network('https://yhq.tw/wp-content/uploads/2018082418004496.png'),
          Image.network('https://yhq.tw/wp-content/uploads/2018082418004496.png'),
        ],
      )
    );
  }
}