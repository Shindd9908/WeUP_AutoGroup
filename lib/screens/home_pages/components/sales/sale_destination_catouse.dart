import 'package:flutter/material.dart';
import 'package:weup_autocar/values/app_colors.dart';

class SaleDestinationCatouse extends StatelessWidget {
  const SaleDestinationCatouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Ưu Đãi",
            style: TextStyle(
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
          GestureDetector(
            onTap: () {
              // ignore: avoid_print
              print('See All');
            },
            child: const Text(
              "Xem tất cả",
              style: TextStyle(
                  fontSize: 16.0,
                  color: AppColors.textColor,
                  letterSpacing: 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
