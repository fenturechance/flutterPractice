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
          buildImageView('https://pixabay.com/get/53e1d04a4c5aa414f6da8c7dda79317d103edfed5a4c704c7d267dd5914ec45b_1280.jpg'),
          buildImageView('https://pixabay.com/get/53e1d3404253ae14f6da8c7dda79317d103edfed5a4c704c7d267dd5914ec45b_1280.jpg')
        ],
      )
    );
  }
  //也可以寫dynamic
  Widget buildImageView(String url, { String title = 'Container Demo' }) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                width: 8.0,
                color: Colors.white60
              )
            ),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.w900,
                fontSize: 20.0
              )
            ),
          ),
        )
      )
    );
    
  }
}