import 'package:flutter/material.dart';
import 'package:weup_autocar/values/app_assets.dart';

class FunctionDistribitorCar extends StatefulWidget {
  const FunctionDistribitorCar({
    Key? key,
  }) : super(key: key);

  @override
  State<FunctionDistribitorCar> createState() => _FunctionDistribitorCarState();
}

class _FunctionDistribitorCarState extends State<FunctionDistribitorCar> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _check = !_check;
          });
        },
        child: Container(
          width: 145,
          decoration: BoxDecoration(
            color: _check ? Colors.red : Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 22.0, vertical: 21.0),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.lambor),
                  radius: 42.0,
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Bán xe bán kèm trách nhiệm",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: _check ? Colors.white : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
