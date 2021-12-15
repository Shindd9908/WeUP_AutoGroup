import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weup_autocar/screens/home_pages/components/sales/card_sale_car.dart';
import 'package:weup_autocar/screens/home_pages/components/sales/sale_destination_catouse.dart';
import 'package:weup_autocar/screens/home_pages/widgets/item_card_sales/items_car_sales.dart';

class HomeCardSales extends StatelessWidget {
  const HomeCardSales({
    Key? key,
    required this.demoDiscount,
  }) : super(key: key);

  final List<Map<String, String>> demoDiscount;
  static const routeNames = '/home-card-sales';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const SaleDestinationCatouse(),
        const SizedBox(height: 10.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoDiscount.length, (index) {
                return InkWell(
                  // ignore: avoid_print
                  onTap: (){
                    if (kDebugMode) {
                      print('Tap');
                    }
                    Navigator.of(context).pushNamed(ItemsCardSales.routeName);
                  },
                  child: CardSaleCar(
                      discountPercent: demoDiscount[index]["discountPercent"],
                      saleImageCar: demoDiscount[index]["pathImage"],
                      saleNameCar: demoDiscount[index]["carName"],
                      salePrice: demoDiscount[index]["price"],
                      saleDisscountPrice: demoDiscount[index]["discountPrice"],
                      saleStarCar: demoDiscount[index]["star"],
                      saleLocation: demoDiscount[index]["location"]),
                );
              }),
            ],
          ),
        )
      ],
    ));
  }
}
