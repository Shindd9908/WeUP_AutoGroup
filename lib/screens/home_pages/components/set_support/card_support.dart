import 'package:flutter/material.dart';

class CardSupport extends StatelessWidget {
  const CardSupport({ Key? key, required this.icon, required this.title }) : super(key: key);

  final Icon? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 105,
        width: 105,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(19),
          boxShadow: const [
            BoxShadow(
                color: Color(0x29000000),
                offset: Offset(3, 3),
                blurRadius: 6,
                spreadRadius: 0)
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon!,
              const SizedBox(
                height: 10,
              ),
              Text(
                title!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}