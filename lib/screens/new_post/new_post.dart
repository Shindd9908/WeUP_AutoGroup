import 'package:flutter/material.dart';

class NewPost extends StatelessWidget {
  const NewPost({Key? key, required this.demoData}) : super(key: key);

  final List<Map<String, String>> demoData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.green,
        )
      ),
    );
  }
}
