// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sharda_parking_app/src/presentation/views/all_car.dart';
import 'package:sharda_parking_app/src/presentation/views/car_add.dart';
import 'package:sharda_parking_app/src/presentation/views/car_edit.dart';
import 'package:sharda_parking_app/src/presentation/views/home.dart';

class RouteName {
  final String home = "/home";
  final String car_edit = "/car_edit";
  final String car_add = "/car_add";
  final String all_cars = "/all_cars";
}

class Routes {
  final Map<String, WidgetBuilder> baseRoutes = {
    RouteName().home: (context) => const HomePage(),
    RouteName().car_add: (context) => const CarAddPage(),
    RouteName().car_edit: (context) => const CarEditPage(),
    RouteName().all_cars: (context) => AllCarPage()
  };
}
