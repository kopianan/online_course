import 'package:auto_route/auto_route.dart';
import 'package:course_online/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'presentation/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        builder: ExtendedNavigator<Router>(router: Router()),
        home: Home());
  }
}
