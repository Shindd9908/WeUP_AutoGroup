import 'package:flutter/material.dart';
import 'package:weup_autocar/values/app_assets.dart';

class OptionsSelected extends StatelessWidget {
  const OptionsSelected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.0,
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: logoPath.length + 1,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 88.0,
              child: Container(
                margin: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: index == 0
                        ? const Center(
                            child: Text(
                              'All...',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          )
                        : Image.asset(
                            logoPath[index - 1],
                            fit: BoxFit.contain,
                          ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

List<String> logoPath = [
  AppAssets.logoBmw,
  AppAssets.logoMerc,
  AppAssets.logoBentley,
  AppAssets.logoLexus,
];
