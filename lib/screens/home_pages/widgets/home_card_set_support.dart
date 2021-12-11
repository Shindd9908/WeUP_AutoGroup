import 'package:flutter/material.dart';
import 'package:weup_autocar/screens/home_pages/components/set_support/card_support.dart';

class HomeCardSetSupport extends StatelessWidget {
  const HomeCardSetSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: const [
                Text(
                  "Bán xe bán kèm trách nhiệm",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          //////////////////////////////
          Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  CardSupport(
                    icon: Icon(
                      Icons.contact_support_outlined,
                      size: 38,
                    ),
                    title: "Support 24/24",
                  ),
                  CardSupport(
                    icon: Icon(
                      Icons.contact_support_outlined,
                      size: 38,
                    ),
                    title: "Bảo dưỡng tại oto +",
                  ),
                ],
              ),
              Column(
                children: const [
                  CardSupport(
                    icon: Icon(
                      Icons.contact_support_outlined,
                      size: 38,
                    ),
                    title: "Tư vấn kĩ thuật",
                  ),
                  CardSupport(
                    icon: Icon(
                      Icons.contact_support_outlined,
                      size: 38,
                    ),
                    title: "Minh bạch thông tin",
                  ),
                ],
              ),
              Column(
                children: const [
                  CardSupport(
                    icon: Icon(
                      Icons.contact_support_outlined,
                      size: 38,
                    ),
                    title: "Tìm xe 4.0",
                  ),
                  CardSupport(
                    icon: Icon(
                      Icons.contact_support_outlined,
                      size: 38,
                    ),
                    title: "Sửa chữa nhanh",
                  ),
                ],
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
