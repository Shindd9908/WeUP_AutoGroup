import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:weup_autocar/modules/demoData.dart';
import 'package:weup_autocar/screens/home_pages/components/sales/items_sales/items_list/widgets_item_car.dart';
import 'package:weup_autocar/screens/home_pages/components/sales/items_sales/items_logo/widgets_item_logo.dart';
import 'package:weup_autocar/screens/home_pages/widgets/item_support_buy/item_support_buycar.dart';
import 'package:weup_autocar/values/app_assets.dart';

class ItemsCardSales extends StatefulWidget {
  ItemsCardSales({Key? key}) : super(key: key);

  static const routeName = '/item-card-widgets';

  @override
  State<ItemsCardSales> createState() => _ItemsCardSalesState();
  final List<String> imgList = [
    AppAssets.lambor,
    AppAssets.lambor,
    AppAssets.lambor,
    AppAssets.lambor,
  ];
}

class _ItemsCardSalesState extends State<ItemsCardSales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(expandedHeight: 150),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 20.0,
              ),
              WidgetsItemLogo(
                demoData: DemoData.demoCarType,
              ),
              WidgetsItemCar(
                demoItemsCarSales: DemoData.demoItemsCarSales,
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.red,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.directions_car_filled_rounded),
            label: "Tư vấn trả góp",
            backgroundColor: Colors.red,
            onTap: () =>
                Navigator.of(context).pushNamed(ItemSupportBuyCar.routeName),
          ),
          SpeedDialChild(
            child: const Icon(Icons.directions_car_filled_rounded),
            backgroundColor: Colors.red,
            label: "Tư vấn chọn xe",
            onTap: () => print('Seleceted ...'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.calendar_today_outlined),
            backgroundColor: Colors.red,
            label: "Đặt lịch hẹn",
            onTap: () => print('Seleceted ...'),
          ),
        ],
      ),
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {

    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        /* Positioned(
          top: 95,
          left: 10,
          right: 10,
          child: buildFloating(shrinkOffset),
        ), */
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) => Opacity(
        opacity: appear(shrinkOffset),
        child: AppBar(
          title: const Text("Sản Phẩm"),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              );
            },
          ),
          backgroundColor: Colors.red,
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 12.0,
            )
          ],
        ),
      );

  Widget buildBackground(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Container(
          width: double.infinity,
          height: 180.0,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),

              //
              const Text(
                "Sản Phẩm",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ],
          ),
          /*child: AppBar(
        title: const Text("Sản Phẩm"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.red,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 12.0,),
        ],
      ), */
        ),
      );

  Widget buildFloating(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ImageSlideshow(
            width: double.infinity,
            height: 250,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(AppAssets.carSlider, fit: BoxFit.cover),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(AppAssets.carSlider, fit: BoxFit.cover),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(AppAssets.carSlider, fit: BoxFit.cover),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(AppAssets.carSlider, fit: BoxFit.cover),
              ),
            ],
            onPageChanged: (value) {
              // ignore: avoid_print
              print('Page changed: $value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
          ),
        ),
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
