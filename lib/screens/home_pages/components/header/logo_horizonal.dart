import 'package:flutter/material.dart';

class LogoHorizonal extends StatelessWidget {
  const LogoHorizonal({Key? key, this.logoTitle, this.logoImagePath}) : super(key: key);

  final String? logoTitle;
  final String? logoImagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              spreadRadius: 0,
              offset: Offset(0.0, 3.0),
            )
          ],
          borderRadius: BorderRadius.circular(21),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(logoImagePath!),
            Text(
              logoTitle!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: logoTitle!.length > 7 ? 10 : 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
