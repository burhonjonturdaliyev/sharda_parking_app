import 'package:flutter/material.dart';
import 'package:sharda_parking_app/src/presentation/widget/number_button.dart';

import '../../model/registered_cars_model.dart';

class AllCarPage extends StatelessWidget {
  AllCarPage({super.key});

  final List<RegisteredCarsModel> model = [
    RegisteredCarsModel(
        fullNmae: "Burkhonjon Turdialiev",
        phoneNumber: "+998906936594",
        carNumber: "50A123BC"),
    RegisteredCarsModel(
        fullNmae: "Burkhonjon Turdialiev",
        phoneNumber: "+998906936594",
        carNumber: "50B554BA"),
    RegisteredCarsModel(
        fullNmae: "Burkhonjon Turdialiev",
        phoneNumber: "+998906936594",
        carNumber: "50T003BA"),
    RegisteredCarsModel(
        fullNmae: "Burkhonjon Turdialiev",
        phoneNumber: "+998906936594",
        carNumber: "50O050OO"),
    RegisteredCarsModel(
        fullNmae: "Burkhonjon Turdialiev",
        phoneNumber: "+998906936594",
        carNumber: "50G999GC"),
    RegisteredCarsModel(
        fullNmae: "Burkhonjon Turdialiev",
        phoneNumber: "+998906936594",
        carNumber: "50003TBA"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registered Cars"),
      ),
      body: ListView.builder(
          itemCount: model.length,
          itemBuilder: (context, index) => NumberButtonWidget(
              onPressed: () {}, title: model[index].carNumber)),
    );
  }
}
