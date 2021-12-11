import 'package:flutter/material.dart';
import 'package:weup_autocar/items/category_items.dart';
import 'package:weup_autocar/modules/custom_girdview.dart';
import 'package:weup_autocar/values/app_assets.dart';

class CustomGirdview extends StatelessWidget {
  const CustomGirdview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: DataCategory.map((item) => ItemCategory(item.id, item.titleCate, item.imageCatePath)).toList(),
          physics: const NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}

 // ignore: non_constant_identifier_names
 List<Category> DataCategory = [
  Category(id: '1', imageCatePath: AppAssets.carSlider, titleCate: "Tư vấn chọn xe"),
  Category(id: '2', imageCatePath: AppAssets.carSlider, titleCate: "Bảo hiểm"),
  Category(id: '3', imageCatePath: AppAssets.carSlider, titleCate: "Đăng ký lái thử"),
  Category(id: '4', imageCatePath: AppAssets.carSlider, titleCate: "Vay lãi trả góp"),
];
