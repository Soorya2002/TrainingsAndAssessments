import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onPressed;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.color = CustomColor.darkBlue});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final double buttonWidth = screenWidth * .9;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * .006),
      child: SizedBox(
        width: buttonWidth,
        height: buttonWidth * .15,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
