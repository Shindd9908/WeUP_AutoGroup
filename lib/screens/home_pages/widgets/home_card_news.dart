import 'package:flutter/material.dart';
import 'package:weup_autocar/screens/home_pages/components/news/card_new_destionation.dart';
import 'package:weup_autocar/screens/home_pages/components/news/function_card_news.dart';

class HomeCardNews extends StatelessWidget {
  const HomeCardNews({Key? key, required this.demoCarNews}) : super(key: key);

  final List<Map<String, String>> demoCarNews;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          const CardNewDestination(),
          const SizedBox(height: 10.0,),
          Column(
          children: [
            ...List.generate(
              demoCarNews.length,
                  (index) => FunctionCardNews(
                pathImage: demoCarNews[index]["pathImage"],
                title: demoCarNews[index]["title"],
                star: demoCarNews[index]["star"],
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}
