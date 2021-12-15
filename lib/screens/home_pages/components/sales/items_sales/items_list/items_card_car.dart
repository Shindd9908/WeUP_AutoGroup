import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weup_autocar/items/icon_with_text.dart';

class ItemsCardCar extends StatelessWidget {
  const ItemsCardCar({Key? key, this.nameCar, this.destinationCar, this.pathImageCar, this.priceCar, this.starCar, this.speedCar, this.locationCar}) : super(key: key);

  final String? nameCar;
  final String? destinationCar;
  final String? pathImageCar;
  final String? priceCar;
  final String? starCar;
  final String? speedCar;
  final String? locationCar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Container(
              height: 410,
              width: double.infinity,
              //color: Colors.green,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 0,
                        offset: Offset(0.0, 3.0,)
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30.0,)
              ),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21.0),
                        topRight: Radius.circular(21.0),
                        bottomRight: Radius.circular(21.0),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(19),
                          child: Image.asset(pathImageCar!, width: double.infinity),
                        ),
                        Positioned(
                          child: InkWell(
                            onTap: () {
                              if (kDebugMode) {
                                print("Tap");
                              }
                            },
                            child: const Icon(
                              Icons.favorite_border_outlined,
                              size: 24,
                              color: Colors.white,
                              //== checked == red ==//
                            ),
                          ),
                          top: 6,
                          right: 9,
                        ),
                      ],
                    ),
                  ),
                  ///////////////
                  const SizedBox(height: 6.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Text(nameCar!, style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.red),),
                            IconWithText(icon: const Icon(Icons.star, color: Colors.red),
                              text: starCar!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(destinationCar!, overflow: TextOverflow.ellipsis, softWrap: false, maxLines: 2, textAlign: TextAlign.left,),
                      ),
                      ///////
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children:[
                            const SizedBox(height: 9.0,),
                            IconWithText(
                              text: priceCar!,
                              icon: const Icon(Icons.monetization_on_outlined),
                              style: const TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            const SizedBox(height: 6.0,),
                            IconWithText(
                              text: speedCar!,
                              icon: const Icon(Icons.speed_outlined),
                            ),
                            const SizedBox(height: 6.0,),
                            IconWithText(
                              text: locationCar!,
                              icon: const Icon(Icons.location_on_outlined),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ///
            ),
          ),
          Positioned(
            bottom: 0,
            right: 21,
            child: InkWell(
              onTap: () {
                if (kDebugMode) {
                  print("Push Named");
                }
              },
              child: SizedBox(
                width: 134,
                height: 54,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("Đặt hàng", style: TextStyle(fontSize: 16.0, color: Colors.white),),
                        Icon(Icons.arrow_forward_outlined, color: Colors.white,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0,)
        ],
      ),
    );
  }
}
