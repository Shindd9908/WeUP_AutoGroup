import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String id;
  final String title;
  final String imageCatePath;

  // ignore: use_key_in_widget_constructors
  const ItemCategory(this.id, this.title, this.imageCatePath);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            imageCatePath,
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
        ),
        //SizedBox(height: 9.0),
        Text(title)
      ],
    );
  }
}
