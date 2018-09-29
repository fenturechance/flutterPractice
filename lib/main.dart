import 'package:flutter/material.dart'; 

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{ //因為不會改變state，所以改回stateless
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      home : Scaffold( 
        appBar: AppBar( 
          title : Text('我的APP')
        ),
        body: ProductManager(startingProduct : 'Food tester')
      )
    ); 
  }
}