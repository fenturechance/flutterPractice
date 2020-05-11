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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Image.network('https://cdn.pixabay.com/photo/2020/04/27/11/03/ranunkeln-5099319_1280.jpg')
          ),
          
          Image.network('https://cdn.pixabay.com/photo/2020/04/22/09/59/tree-5077020_1280.jpg'),
          Image.network('https://cdn.pixabay.com/photo/2020/05/06/12/01/compass-5137269_1280.jpg'),
        ],
      )
    );
  }
}