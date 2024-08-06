import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color borderColor;
  final double horizontalPadding;
  final double verticalPadding;
  const TextBox({
    super.key,
    required this.text,
    required this.textColor,
    required this.borderColor,
    this.horizontalPadding = 10,
    this.verticalPadding = 6,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor, width: 1.1)
            // color: borderColor,
            ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
