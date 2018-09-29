import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products; //定義一個list //這個變數在裡面不會改變
  Products(this.products); //利用這個class的這個方法去接外面的變數
  @override
    Widget build(BuildContext context) {
      return Column(
              children: products.map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(element)
                  ],
                )
              )).toList()
            );
    }
}