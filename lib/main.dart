import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            "Online Course",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            Icon(Icons.account_circle),
            Icon(Icons.group),
          ],
        ),
        body: Center(
          child: Container(
            height: 80,
            width: double.infinity,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconWithLabel(
                  icon: Icons.call,
                  text: "Call",
                ),
                IconWithLabel(icon: Icons.navigation,text: "Routes",),
                IconWithLabel(icon: Icons.share,text: "Share",),
              ],
            ),
          ),
        ));
  }
}

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({Key key, @required this.icon, @required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
