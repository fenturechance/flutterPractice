import 'package:flutter/material.dart';
import './page2.dart';
import './page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalData(
      child: MaterialApp(
        // home: HomePage()
        initialRoute: '/',
        routes: {
          '/': (BuildContext context)  => HomePage(),
          '/Page2': (BuildContext context)  => Page2(),
          '/Page3': (BuildContext context)  => Page3(),

        },
      )
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
    /// if you don't define, item in list will be dynamic -> three /// to write comment
    List<String> urls = [
      'assets/images/forest.jpg',
      'assets/images/raspberries.jpg'
    ];
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
        // function without name called closure
        children: List.generate(urls.length, (idx) {
          return GestureDetector(
            child: _buildImageView(urls[idx]),
            onTap: () {
              NavigatorState nav = Navigator.of(context);
              GlobalData g = GlobalData.of(context);
              g.title = 'Photo Show';
              g.url = urls[idx];
              nav.pushNamed('/Page2');
              // nav.push(MaterialPageRoute(
              //   builder: (context) => Page2(
              //     'My Page2',
              //     '${urls[idx]}'
              //   )
              //   // 等同 builder: (context) { return Page2(); }
              // )).then((result) {
              //   print(result);
              // });
            },
          );
        }),
      )
    );
  }
  //也可以寫dynamic
  Widget _buildImageView(String url, { String title = 'Container Demo' }) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              ///要換一個provider
              image: AssetImage(url),
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
                fontFamily: 'Monoton',
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

class GlobalData extends InheritedModel {
  String title;
  String url;

  GlobalData({ @required Widget child }) : super(child: child);

  static GlobalData of(BuildContext context, { String aspect }){
    return InheritedModel.inheritFrom<GlobalData>(context, aspect: aspect);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  @override
  //A collection of objects in which each object can occur only once.
  bool updateShouldNotifyDependent(GlobalData oldWidget, Set dependencies) {
    if(dependencies.contains('title') && oldWidget.title != title) {
      return true;
    }
    if(dependencies.contains('url') && oldWidget.url != url) {
      return true;
    }
    return false;
  }

}