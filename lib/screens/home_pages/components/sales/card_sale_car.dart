import 'package:flutter/material.dart';
import 'package:weup_autocar/items/icon_with_text.dart';

class CardSaleCar extends StatelessWidget {
  const CardSaleCar(
      {Key? key,
      required this.discountPercent,
      required this.saleImageCar,
      required this.saleNameCar,
      required this.salePrice,
      required this.saleDisscountPrice,
      required this.saleStarCar,
      required this.saleLocation})
      : super(key: key);

  final String? discountPercent;
  final String? saleImageCar;
  final String? saleNameCar;
  final String? salePrice;
  final String? saleDisscountPrice;
  final String? saleStarCar;
  final String? saleLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        child: SizedBox(
          height: 300.0,
          width: 300.0,
          //color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: 250.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    spreadRadius: 0,
                    offset: Offset(0.0, 3.0),
                  ),
                ],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(saleImageCar!),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            height: 58,
                            width: 54,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.red,
                              gradient: LinearGradient(
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                                colors: [
                                  Colors.red,
                                  Color(0xFFFC6F6F),
                                ],
                              ),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  "Giảm",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "$discountPercent%",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 9.0),
                    child: Column(
                      children: [
                        Text(
                          saleNameCar!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left
                        ),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Text(salePrice!),
                                Container(
                                  alignment: Alignment.center,
                                  height: 1,
                                  width: 90,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            Text(
                              saleDisscountPrice!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconWithText(
                              icon: const Icon(Icons.star, color: Colors.red),
                              text: saleStarCar!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                           IconWithText(
                              icon: const Icon(Icons.location_on_outlined),
                              text: saleLocation!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
