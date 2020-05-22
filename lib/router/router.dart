import 'package:auto_route/auto_route_annotations.dart';
import 'package:course_online/presentation/dashboard/dashboard.dart';
import 'package:course_online/presentation/home/home.dart';

// flutter packages pub run build_runner watch --delete-conflicting-outputs
@MaterialAutoRouter()
class $Router {
  @initial
  Home home;
  Dashboard dashboard;
  
}
