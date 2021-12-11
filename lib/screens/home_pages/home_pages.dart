import 'package:flutter/material.dart';
import 'package:weup_autocar/modules/demoData.dart';
import 'package:weup_autocar/screens/home_pages/widgets/home_card_distribitor.dart';
import 'package:weup_autocar/screens/home_pages/widgets/home_card_newcar.dart';
import 'package:weup_autocar/screens/home_pages/widgets/home_card_news.dart';
import 'package:weup_autocar/screens/home_pages/widgets/home_card_sales.dart';
import 'package:weup_autocar/screens/home_pages/widgets/home_card_set_support.dart';
import 'package:weup_autocar/screens/home_pages/widgets/home_grid_support.dart';
import 'package:weup_autocar/screens/home_pages/widgets/home_hearder.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            HomeHeader(demoData: DemoData.demoCarType),
            HomeGridSupport(demoDataGrid: DemoData.demoDataGrid),
            HomeCardSales(demoDiscount: DemoData.demoDiscount,),
            HomeCardNewCar(demoNewCar: DemoData.demoLatestCar,),
            HomeCarDistribitor(demoDistributor: DemoData.demoDistributor,),
            const HomeCardSetSupport(),
            HomeCardNews(demoCarNews: DemoData.demoCarNews,),
          ],
        ),
      ),
    );
  }
}
