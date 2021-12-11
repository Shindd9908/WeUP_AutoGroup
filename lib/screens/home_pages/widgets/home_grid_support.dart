import 'package:flutter/material.dart';
import 'package:weup_autocar/screens/home_pages/components/support/fuction_card_suport.dart';

class HomeGridSupport extends StatelessWidget {
  const HomeGridSupport({Key? key, required this.demoDataGrid})
      : super(key: key);

  final List<Map<String, String>> demoDataGrid;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 4,
        mainAxisSpacing: 0,
        children: List.generate(demoDataGrid.length, (index) {
          return GestureDetector(
            onTap: () {
              // ignore: avoid_print
              print("TapTap");
            },
            child: FunctionCardSupport(
              titleSupport: demoDataGrid[index]["title"],
              imageSupport: demoDataGrid[index]["image"],
            ),
          );
        }),
      ),
    );
  }
}
