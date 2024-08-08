import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';

class ImageButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback? onTap;
  const ImageButton(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(color: CustomColor.whiteShade2),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(imagePath),
              ),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: CustomColor.fontColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
