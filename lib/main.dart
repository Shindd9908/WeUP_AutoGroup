import 'package:flutter/material.dart';
import 'package:weup_autocar/modules/demoData.dart';
import 'package:weup_autocar/screens/calendar/calendar_pages.dart';
import 'package:weup_autocar/screens/home_pages/home_pages.dart';
import 'package:weup_autocar/screens/home_pages/widgets/item_card_sales/items_car_sales.dart';
import 'package:weup_autocar/screens/home_pages/widgets/item_support_buy/item_support_buycar.dart';
import 'package:weup_autocar/screens/hot_line/hot_line_pages.dart';
import 'package:weup_autocar/screens/new_post/new_post.dart';
import 'package:weup_autocar/values/app_colors.dart';
import 'screens/account/acount_pages.dart';
import 'screens/home_pages/widgets/item_card_sales/items_car_sales.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      routes: {
        ItemsCardSales.routeName: (ctx) =>ItemsCardSales(),
        ItemSupportBuyCar.routeName: (ctx) =>const ItemSupportBuyCar(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    const HomePage(),
    const BookPages(),
    NewPost(demoData: DemoData.demoCarType),
    const HotLinePages(),
    const AccountPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
            // ignore: avoid_print
            print(pageIndex);
          });
        },
        backgroundColor: AppColors.primaryColor,
        fixedColor: AppColors.secondColor,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Trang Chủ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range_outlined),
            label: "Đặt Lịch",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: "Đăng Tin",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: "Liên Hệ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Tài Khoản",
          ),
        ],
      ),
    );
  }
}
