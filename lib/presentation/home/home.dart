
import 'package:course_online/widgets/icon_with_label.dart';
import 'package:flutter/material.dart';

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
                  iconColor: Colors.green,
                  textColor: Colors.indigo,
                ),
                IconWithLabel(
                  icon: Icons.navigation,
                  text: "Routes",
                  iconColor: Colors.green,
                  textColor: Colors.indigo,
                ),
                IconWithLabel(
                  icon: Icons.share,
                  text: "Share",
                  iconColor: Colors.green,
                  textColor: Colors.indigo,
                ),
              ],
            ),
          ),
        ));
  }
}