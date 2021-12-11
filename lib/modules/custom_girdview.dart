import 'package:weup_autocar/values/app_assets.dart';

class Category {
  final String id;
  final String imageCatePath;
  final String titleCate;

  Category({
    required this.id,
    required this.imageCatePath,
    required this.titleCate,
  });
}

List<Category> category = [
  Category(id: '1', imageCatePath: AppAssets.carSlider, titleCate: "Tư vấn chọn xe"),
  Category(id: '2', imageCatePath: AppAssets.carSlider, titleCate: "Bảo hiểm"),
  Category(id: '3', imageCatePath: AppAssets.carSlider, titleCate: "Đăng ký lái thử"),
  Category(id: '4', imageCatePath: AppAssets.carSlider, titleCate: "Vay lãi trả góp"),
];
