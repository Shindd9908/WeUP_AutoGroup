import 'package:flutter/material.dart';
import 'package:weup_autocar/values/app_assets.dart';

class BackGround extends StatefulWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  State<BackGround> createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  List<CardItem> items = [
    const CardItem(
      image: AppAssets.logoBmw,
      title: 'BMW',
    ),
    const CardItem(
      image: AppAssets.logoMerc,
      title: 'Mercerdez',
    ),
    const CardItem(
      image: AppAssets.logoBentley,
      title: 'Bentley',
    ),
    const CardItem(
      image: AppAssets.logoLexus,
      title: 'Lexus',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: 210.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) =>
                buildCrad(items: items[index]),
            itemCount: 6,
          )),
    );
  }

  Widget buildCrad({required CardItem items}) => Container(
        width: 200,
        color: Colors.red.shade400,
        child: Column(
          children: [
            Image.asset(AppAssets.logoBmw),
            const SizedBox(height: 4),
            const Text(
              'BMW',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}

class CardItem {
  final String image;
  final String title;

  const CardItem({
    required this.image,
    required this.title,
  });
}
