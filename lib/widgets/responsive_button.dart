import 'package:flutter/material.dart';

//Icon button for welcome page

class ResponsiveButton extends StatelessWidget {
  ResponsiveButton({super.key, this.width, this.isResponsive, required this.color});

  bool? isResponsive;
  double? width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color,
        // border: Border.all(
        //     style: BorderStyle.solid,
        //     color: Color.fromARGB(76, 255, 255, 255),
        //     width: 1.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/arrowButtonBlue.png",
          ),
        ],
      ),
    );
  }
}

//text button for detail page

class FullWidthButton extends StatelessWidget {
  FullWidthButton(
      {super.key, this.width, this.isResponsive, required this.color, required this.text});

  bool? isResponsive;
  double? width;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color,
        // border: Border.all(
        //     style: BorderStyle.solid,
        //     color: Color.fromARGB(76, 255, 255, 255),
        //     width: 1.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),

          //

          const SizedBox(
            width: 10,
          ),

          //

          Image.asset(
            "images/arrowButtonWhite.png",
          ),
        ],
      ),
    );
  }
}
