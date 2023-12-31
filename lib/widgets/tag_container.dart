import 'package:flutter/material.dart';

import 'text.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      margin: const EdgeInsets.only(right: 10),
      // width: 100,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black.withOpacity(0.06),
      ),

      //

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: AppText(
          text: text,
          color: Colors.black,
        ),
      ),
    );
  }
}