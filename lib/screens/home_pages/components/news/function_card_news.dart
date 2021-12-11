import 'package:flutter/material.dart';
import 'package:weup_autocar/items/icon_with_text.dart';

class FunctionCardNews extends StatelessWidget {
  const FunctionCardNews(
      {Key? key,
      required this.pathImage,
      required this.title,
      required this.star})
      : super(key: key);

  final String? pathImage;
  final String? title;
  final String? star;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: InkWell(
        onTap: () {},
        child: Container(
          //color: Colors.blue,
          width: double.infinity,
          //height: 90.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ), 
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: 90.0,
                  height: 60.0,
                  child: Image.asset(pathImage!, fit: BoxFit.cover,),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 238,
                    child: Text(
                      title!,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      //textWidthBasis: TextWidthBasis.parent,
                      maxLines: 2,
                      
                    ),
                  ),
                  const SizedBox(height: 8),
                  IconWithText(
                    icon: const Icon(Icons.star, color: Color(0xFFF9B733)),
                    text: star!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
