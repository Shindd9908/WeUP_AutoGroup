import 'package:flutter/material.dart';

class ItemSupportBuyCar extends StatefulWidget {
  const ItemSupportBuyCar({Key? key}) : super(key: key);

  @override
  State<ItemSupportBuyCar> createState() => _ItemSupportBuyCarState();
  static const routeName = '/item-support-buyCar';
}

class _ItemSupportBuyCarState extends State<ItemSupportBuyCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 90,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    const Text(
                      "Hỗ trợ trả góp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 27.0,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 21.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Giá Trị Tổng Cộng (VNĐ)",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      //custom Controller
                      //controller: heightController,
                      decoration: InputDecoration(
                        hintText: " Nhập Giá Trị Tổng Cộng (VNĐ)",
                        filled: true,
                        fillColor: Colors.white60,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      "Số Tiền Vay (VNĐ)",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      //custom Controller
                      //controller: heightController,
                      decoration: InputDecoration(
                        hintText: " Nhập Số Tiền Vay (VNĐ)",
                        filled: true,
                        fillColor: Colors.white60,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      "Thời Hạn Vay",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      //custom Controller
                      //controller: heightController,
                      decoration: InputDecoration(
                        hintText: "Nhập thời hạn vay",
                        filled: true,
                        fillColor: Colors.white60,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      "Lãi Suất Năm Đầu (%)",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      //custom Controller
                      //controller: heightController,
                      decoration: InputDecoration(
                        hintText: " Nhập Lãi Suất Năm Đầu (%)",
                        filled: true,
                        fillColor: Colors.white60,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      "Lãi Suất Năm Thứ 2 (%)",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      //custom Controller
                      //controller: heightController,
                      decoration: InputDecoration(
                        hintText: " Nhập Lãi Suất Năm Thứ 2 (%)",
                        filled: true,
                        fillColor: Colors.white60,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Done");
                },
                child: const Text(
                  "Gửi",
                  style: TextStyle(fontSize: 18.0),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: const Size(360.0, 50.0),
                ),
              ),
            ],
          ),
        ),
      ),
      /*CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(expandedHeight: 150),
            pinned: true,
          ),
        ],
      ), */
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
        //buildAppBar(shrinkOffset),
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
          leading: const Icon(Icons.arrow_back_ios_new_rounded),
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
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ],
        ),
        /*child: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text("Hỗ trợ trả góp"),
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
        ), */
      )
      /*Container(
      width: double.infinity,
      height: 150.0,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          IconButton(onPressed: (){
            //print("Tap");
          }, icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white, size: 30.0,),),
          const Text("Tư Vấn Trả Góp ", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),),
        ],
      ),
    ), */
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
