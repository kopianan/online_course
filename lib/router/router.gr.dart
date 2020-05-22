// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:course_online/presentation/home/home.dart';
import 'package:course_online/presentation/dashboard/dashboard.dart';

abstract class Routes {
  static const home = '/';
  static const dashboard = '/dashboard';
  static const all = {
    home,
    dashboard,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Home(),
          settings: settings,
        );
      case Routes.dashboard:
        if (hasInvalidArgs<DashboardArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<DashboardArguments>(args);
        }
        final typedArgs = args as DashboardArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => Dashboard(
              title: typedArgs.title, buttonText: typedArgs.buttonText),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//Dashboard arguments holder class
class DashboardArguments {
  final String title;
  final String buttonText;
  DashboardArguments({this.title, @required this.buttonText});
}
