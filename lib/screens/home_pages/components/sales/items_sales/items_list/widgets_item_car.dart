import 'package:flutter/material.dart';
import 'package:weup_autocar/screens/home_pages/components/sales/items_sales/items_list/items_card_car.dart';

class WidgetsItemCar extends StatelessWidget {
  const WidgetsItemCar({Key? key, required this.demoItemsCarSales})
      : super(key: key);

  final List<Map<String, String>> demoItemsCarSales;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ...List.generate(
            demoItemsCarSales.length,
            (index) => ItemsCardCar(
              nameCar: demoItemsCarSales[index]["nameCar"],
              destinationCar: demoItemsCarSales[index]["destinationCar"],
              pathImageCar: demoItemsCarSales[index]["pathImageCar"],
              priceCar: demoItemsCarSales[index]["priceCar"],
              starCar: demoItemsCarSales[index]["starCar"],
              speedCar: demoItemsCarSales[index]["speedCar"],
              locationCar: demoItemsCarSales[index]["locationCar"],
            ),
          ),
        ],
      ),
    ));
  }
}
