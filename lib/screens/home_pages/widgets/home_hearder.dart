import 'package:flutter/material.dart';
import 'package:weup_autocar/screens/home_pages/components/header/image_slider.dart';
import 'package:weup_autocar/screens/home_pages/components/header/logo_horizonal.dart';
import 'package:weup_autocar/screens/home_pages/components/header/search_bar.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key, required this.demoData}) : super(key: key);

  final List<Map<String, String>> demoData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const ImageSlider(),
            const SearchBar(),
            Container(
              height: 60,
            )
          ],
        ),
        Positioned(
          bottom: 20,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
            children: [
              ...List.generate(
                  demoData.length,
                      (index) => LogoHorizonal(
                    logoTitle: demoData[index]["text"],
                    logoImagePath: demoData[index]["image"],
                  ),
                ),
            ],
            ),
          ),
        ), 
      ],
    );
  }
}
