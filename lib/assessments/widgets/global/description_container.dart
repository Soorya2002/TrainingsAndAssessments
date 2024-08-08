import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/data/skill_data.dart';
import 'package:trainings_and_assessments/assessments/data/training_features.dart';
import 'package:trainings_and_assessments/assessments/model/skill_category.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/features/text_box.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/title_row.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';

class AssessmentsDescription extends StatelessWidget {
  final String assessmentName;
  final String providerName;
  final String imagePath;
  final String place;
  const AssessmentsDescription({
    super.key,
    required this.assessmentName,
    required this.providerName,
    required this.imagePath,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final List<SkillCategory> skillCategories = SkillData.getSkillCategories();
    return Padding(
      padding: EdgeInsets.only(
          top: screenWidth * 0.05,
          right: screenWidth * 0.05,
          left: screenWidth * 0.05),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFD9D9D9)),
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          // Add SingleChildScrollView here
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleRow(
                imagePath: ImagePath.pythonPng,
                assessmentTitle: 'Python Basics',
                providerName: 'ShareInfo',
                place: 'CE Thalassery',
              ),
              SizedBox(
                height: screenWidth * 0.015,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: screenHeight * 0.001,
                  color: CustomColor.whiteShade2,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
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
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: screenHeight * 0.001,
                  color: const Color(0xFFD9D9D9),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "You Should Know About",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: CustomColor.darkOrange,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: skillCategories.asMap().entries.map((entry) {
                    int categoryIndex = entry.key;
                    var category = entry.value;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${categoryIndex + 1}. ${category.title}:',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: CustomColor.darkBlue,
                          ),
                        ),
                        ...category.skills.asMap().entries.map((skillEntry) {
                          int skillIndex = skillEntry.key;
                          var skill = skillEntry.value;
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${String.fromCharCode(97 + skillIndex)}. ${skill.subtitle}',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: CustomColor.lightBlue,
                                  ),
                                ),
                                ...skill.points
                                    .asMap()
                                    .entries
                                    .map((pointEntry) {
                                  int pointIndex = pointEntry.key;
                                  var point = pointEntry.value;
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '${[
                                        'i',
                                        'ii',
                                        'iii',
                                        'iv',
                                        'v',
                                      ][pointIndex]}.$point',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: CustomColor.fontColor,
                                      ),
                                    ),
                                  );
                                }),
                              ],
                            ),
                          );
                        }),
                        const SizedBox(height: 10),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
