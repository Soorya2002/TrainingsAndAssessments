import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';

class AspirantImage extends StatelessWidget {
  final String text;
  final double width, height, fontSize;
  const AspirantImage(
      {super.key,
      required this.text,
      required this.width,
      required this.height,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF3A0070),
          ),
        ),
        Image.asset(
          ImagePath.aspirantPng,
          height: height,
          width: width,
        ),
        Text(
          "aspirant",
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF3A0070),
          ),
        ),
      ],
    );
  }
}
