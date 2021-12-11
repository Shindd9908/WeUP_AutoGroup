import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:weup_autocar/values/app_assets.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ImageSlideshow(
                  width: double.infinity,
                  height: 350,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  children: [
                    Image.asset(AppAssets.carSlider, fit: BoxFit.cover),
                    Image.asset(
                      AppAssets.carSlider,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      AppAssets.carSlider,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      AppAssets.carSlider,
                      fit: BoxFit.cover,
                    ),
                  ],
                  onPageChanged: (value) {
                    // ignore: avoid_print
                    print('Page changed: $value');
                  },
                  autoPlayInterval: 3000,
                  isLoop: true,
                ),
                Positioned(
                  left: 0,
                  width: 50.0,
                  height: 50.0,
                  top: 25.0,
                  child: IconButton(
                    onPressed: () {
                      // ignore: avoid_print
                      print('OnClik');
                    },
                    icon: //Icon(LineIcons.alignLeft, color: Colors.white, size: 30,),
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ), 
        ],
      ),
    );
  }
}
