import 'package:flutter/material.dart';
import 'package:weup_autocar/screens/home_pages/components/sales/items_sales/items_logo/items_logo_horizional.dart';

class WidgetsItemLogo extends StatelessWidget {
  const WidgetsItemLogo({Key? key, required this.demoData}) : super(key: key);

  final List<Map<String, String>> demoData;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 99,
        width: 99,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoData.length,
                    (index) => ItemLogoSales(
                  logoTitle: demoData[index]["text"],
                  logoImagePath: demoData[index]["image"],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
