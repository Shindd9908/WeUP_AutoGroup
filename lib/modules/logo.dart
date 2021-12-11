import 'package:weup_autocar/values/app_assets.dart';

class Logo {
  String imagePath;
  String title;

  Logo({
    required this.imagePath,
    required this.title,
  });
}

List<Logo> logo = [
  Logo(imagePath: AppAssets.logoBmw, title: 'BMW'),
  Logo(imagePath: AppAssets.logoMerc, title: 'Mercedez'),
  Logo(imagePath: AppAssets.logoBentley, title: 'Bentley'),
  Logo(imagePath: AppAssets.logoLexus, title: 'Lexus'),
];
