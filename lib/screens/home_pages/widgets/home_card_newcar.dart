import 'package:flutter/material.dart';
import 'package:weup_autocar/screens/home_pages/components/new_car/function_new_car.dart';
import 'package:weup_autocar/screens/home_pages/components/new_car/new_car_destination.dart';

class HomeCardNewCar extends StatelessWidget {
  const HomeCardNewCar({Key? key, required this.demoNewCar}) : super(key: key);

  final List<Map<String, String>> demoNewCar;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        const NewCarDestination(),
        const SizedBox(
          height: 10.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoNewCar.length, (index) {
                return InkWell(
                  // ignore: avoid_print
                  onTap: () => print('Tap'),
                  child: FunctionNewCar(
                    newImageCars: demoNewCar[index]["pathImage"],
                    newDescriptionCars: demoNewCar[index]["carDescription"],
                    newPriceCars: demoNewCar[index]["price"],
                    newSpeedCars: demoNewCar[index]["speed"],
                    newLocationCars: demoNewCar[index]["location"],           
                  ),   
                );
              }),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        )
      ],
    ));
  }
}
