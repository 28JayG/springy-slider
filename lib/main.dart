import 'package:flutter/material.dart';
import 'package:springy_slider/widgets/build_text_button.dart';
import 'package:springy_slider/widgets/springy_slider.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xFFFE497F),
      ),
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 25.0,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          buildTextButton(
            title: 'settings',
            isOnLight: true,
            context: context,
          )
        ],
      ),
      body: new Column(
        children: <Widget>[
          //TODO:(2.2) Bring in your SpringySlider
          Expanded(
            child:Container(),
//            child: SpringySlider(
//              markCount: 12,
//              negativeColor: Theme.of(context).scaffoldBackgroundColor,
//              positiveColor: Theme.of(context).primaryColor,
//            ),
          ),
          Container(
            height: 50.0,
            color: Theme.of(context).primaryColor,
            child: Row(
              children: <Widget>[
                buildTextButton(
                  title: 'more',
                  isOnLight: false,
                ),
                Expanded(
                  child: Container(),
                ),
                buildTextButton(
                  title: 'stats',
                  isOnLight: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
