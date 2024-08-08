import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/data/training_features.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/features/text_box.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/title_row.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';

class CustomContainer extends StatelessWidget {
  final String assessmentName;
  final String providerName;
  final String imagePath;
  final String place;
  final VoidCallback? onTap;

  const CustomContainer(
      {super.key,
      required this.assessmentName,
      required this.providerName,
      required this.imagePath,
      required this.place,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          top: screenWidth * 0.05,
          right: screenWidth * 0.05,
          left: screenWidth * 0.05),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFD9D9D9)),
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: Column(
            children: [
              const TitleRow(
                imagePath: ImagePath.pythonPng,
                assessmentTitle: 'Python Basics',
                providerName: 'ShareInfo',
                place: 'CE Thalassery',
                iconButton: true,
                iconPath: ImagePath.clockPng,
              ),
              SizedBox(
                height: screenWidth * 0.015,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: screenHeight * 0.001,
                  color: const Color(0xFFD9D9D9),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBox(
                      text: TrainingFeatures.features[0],
                      textColor: CustomColor.darkOrange,
                      borderColor: CustomColor.darkOrange),
                  TextBox(
                      text: TrainingFeatures.features[1],
                      textColor: CustomColor.darkOrange,
                      borderColor: CustomColor.darkOrange),
                  TextBox(
                      text: TrainingFeatures.features[2],
                      textColor: CustomColor.darkOrange,
                      borderColor: CustomColor.darkOrange),
                  TextBox(
                      text: TrainingFeatures.features[3],
                      textColor: CustomColor.darkOrange,
                      borderColor: CustomColor.darkOrange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBox(
                      text: TrainingFeatures.features[4],
                      textColor: CustomColor.darkBlue,
                      borderColor: CustomColor.darkBlue),
                  TextBox(
                      text: TrainingFeatures.features[5],
                      textColor: CustomColor.darkBlue,
                      borderColor: CustomColor.darkBlue),
                  TextBox(
                    text: TrainingFeatures.features[6],
                    textColor: const Color(0xFFF31919),
                    borderColor: const Color(0xFFF31919),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
