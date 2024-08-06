import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';

class TitleRow extends StatelessWidget {
  final String imagePath;
  final String assessmentTitle;
  final String providerName;
  final String place;
  final bool iconButton;
  final String iconPath;
  const TitleRow(
      {super.key,
      required this.imagePath,
      required this.assessmentTitle,
      required this.providerName,
      required this.place,
      this.iconButton = false,
      this.iconPath = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFFD9D9D9)),
                color: Colors.white),
            child: Image.asset(imagePath),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    assessmentTitle,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: providerName,
                          style: TextStyle(
                            color: CustomColor.secondaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' for ',
                          style: TextStyle(
                            color: CustomColor.fontColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: place,
                          style: const TextStyle(
                            color: Color(0xFF077BD8),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              iconButton
                  ? IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        iconPath,
                      ),
                    )
                  : const Text('')
            ],
          ),
        ),
      ],
    );
  }
}