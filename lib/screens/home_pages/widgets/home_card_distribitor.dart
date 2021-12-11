import 'package:flutter/material.dart';
import 'package:weup_autocar/screens/home_pages/components/distribitor/function_distribitor_car.dart';
import 'package:weup_autocar/screens/home_pages/components/distribitor/new_destination_distribitor.dart';

class HomeCarDistribitor extends StatelessWidget {
  const HomeCarDistribitor({Key? key, required this.demoDistributor}) : super(key: key);

  final List<Map<String, String>> demoDistributor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const NewDestinationDistribitorCar(),
          const SizedBox(
            height: 15.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(demoDistributor.length, (index) => const FunctionDistribitorCar(),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
