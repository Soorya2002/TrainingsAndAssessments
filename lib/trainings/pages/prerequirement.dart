import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/trainings/data/skill_data.dart';
import 'package:trainings_and_assessments/trainings/model/skill_model.dart';
import 'package:trainings_and_assessments/trainings/pages/confirmation_screen.dart';
import 'package:trainings_and_assessments/trainings/pages/practice.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/training_container.dart';

class Prerequirement extends StatelessWidget {
  const Prerequirement({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<SkillCategory> skillData = SkillData.getSkillCategories();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prepare',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            TrainingContainer(
              width: screenWidth * 0.9,
              img: ImagePath.pythonPng,
              text1: 'Python Basics',
              texta: 'ShareInfo\t',
              textb: 'for\t',
              textc: 'CE Thalassery',
              text2: 'Dr. Subhash || IIT Madras',
              date: '07 Mar 2024; Thursday',
              myIconData: null,
              additionalChildren: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: screenHeight * .001,
                        color: const Color(0xFFD9D9D9),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * .01,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Topics will Cover",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFEE5602)),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: skillData.length,
                      itemBuilder: (context, categoryIndex) {
                        final category = skillData[categoryIndex];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                '${categoryIndex + 1}. ${category.title}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: CustomColor.darkBlue,
                                ),
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: category.skills.length,
                              itemBuilder: (context, skillIndex) {
                                final skill = category.skills[skillIndex];
                                final subtitleLetter =
                                    String.fromCharCode(97 + skillIndex);
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, bottom: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '$subtitleLetter. ${skill.subtitle}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: CustomColor.lightBlue),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: skill.points.map((point) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16, top: 4),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'i. ',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: CustomColor
                                                          .fontColor),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    point,
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          CustomColor.fontColor,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            CustomButton(
              text: 'Start Preparing',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PracticeScreen()));
              },
              color: CustomColor.fontColor,
            ),
            CustomButton(
              text: 'I’m Ready for Training',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const ConfirmationScreen()));
              },
              color: CustomColor.lightBlue,
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
          ],
        ),
      ),
    );
  }
}
