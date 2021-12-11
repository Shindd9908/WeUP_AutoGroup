import 'package:flutter/material.dart';

class FunctionCardSupport extends StatelessWidget {
  const FunctionCardSupport({Key? key, this.titleSupport, this.imageSupport})
      : super(key: key);

  final String? titleSupport;
  final String? imageSupport;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 120.0,
          width: 156.0,
          /* decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ), */
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageSupport!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Text(
          titleSupport!,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
