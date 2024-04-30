import 'package:flutter/material.dart';
import 'package:sharda_parking_app/src/presentation/widget/type_button.dart';
import 'package:sharda_parking_app/src/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          ButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, RouteName().all_cars);
              },
              title: "Barcha mashinalar"),
          ButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, RouteName().car_add);
              },
              title: "Mashina raqam qo'shish"),
          ButtonWidget(
              onPressed: () {
                Navigator.pushNamed(context, RouteName().car_edit);
              },
              title: "Mashina raqam tahrirlash"),
        ],
      )),
    );
  }
}
