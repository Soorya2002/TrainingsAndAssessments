import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  final double width;
  // final double swidth;
  final Color borderColor;
  final Color textColor;
  const TextBox({
    super.key,
    required this.width,
    required this.text,
    // required this.swidth,
    required this.borderColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}
