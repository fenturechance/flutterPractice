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
    Size size = MediaQuery.of(context).size;
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
            padding: EdgeInsets.only(top: 10, bottom: 30, left: 10, right: 20),
            child: Image.network('https://cdn.pixabay.com/photo/2020/04/27/11/03/ranunkeln-5099319_1280.jpg')
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2020/05/06/12/01/compass-5137269_1280.jpg',
                fit: BoxFit.cover
              )
            ),
          ),
          // Container(
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(border: Border.all(width: 5, color: Colors.blue)),
          //   child: Image.network('https://cdn.pixabay.com/photo/2020/05/06/12/01/compass-5137269_1280.jpg'),
          // )
        ],
      )
    );
  }
}