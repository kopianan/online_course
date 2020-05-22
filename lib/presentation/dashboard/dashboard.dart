import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({this.title, @required this.buttonText});
  final String title;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((title == null) ? "Dashboard Page" : title),
      ),
      body: RaisedButton(
        child: Text(buttonText),
        onPressed: () {
          ExtendedNavigator.of(context).pop(); 
        },
      ),
    );
  }
}
