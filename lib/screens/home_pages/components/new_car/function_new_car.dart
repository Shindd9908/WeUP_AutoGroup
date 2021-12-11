import 'package:flutter/material.dart';
import 'package:weup_autocar/items/icon_with_text.dart';

class FunctionNewCar extends StatelessWidget {
  const FunctionNewCar(
      {Key? key,
      @required this.newImageCars,
      @required this.newDescriptionCars,
      @required this.newPriceCars,
      @required this.newSpeedCars,
      @required this.newLocationCars})
      : super(key: key);

  final String? newImageCars;
  final String? newDescriptionCars;
  final String? newPriceCars;
  final String? newSpeedCars;
  final String? newLocationCars;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        // ignore: avoid_print
        onTap: () => print('TapNewCar'),
        child: Container(
          width: 170,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(newImageCars!),),
                  const Positioned(
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 20,
                    ),
                    top: 6,
                    right: 9,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Text(
                      newDescriptionCars!,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    IconWithText(
                      text: newPriceCars!,
                      icon: const Icon(Icons.monetization_on_outlined),
                      style: const TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    IconWithText(
                      text: newSpeedCars!,
                      icon: const Icon(Icons.speed_outlined),
                    ),
                    IconWithText(
                      text: newLocationCars!,
                      icon: const Icon(Icons.location_on_outlined),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
