import 'package:flutter/material.dart';
import 'package:weup_autocar/values/app_colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 36),
          decoration: const BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.greyText,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: "Tìm kiếm",
                  contentPadding: const EdgeInsets.all(0.0)),
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ),
      ],
    );
  }
}
