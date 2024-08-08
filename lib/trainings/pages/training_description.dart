import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/trainings/data/description_data.dart';
import 'package:trainings_and_assessments/trainings/model/description.dart';
import 'package:trainings_and_assessments/trainings/pages/assessmentdetailed.dart';
import 'package:trainings_and_assessments/trainings/pages/prerequirement.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/training_container.dart';

class TrainingDescription extends StatelessWidget {
  const TrainingDescription({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<DescriptionModel> descriptionData = DescriptionData.descriptionData;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trainings',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            TrainingContainer(
              width: screenWidth * 0.9,
              img: 'assets/images/python.png',
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
                      itemCount: descriptionData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
                                child: Text(
                                  '${index + 1}. ${descriptionData[index].title}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Color(0xFF414ECA),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                    descriptionData[index].points.map((point) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 1.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('  • ',
                                            style: TextStyle(fontSize: 12)),
                                        Expanded(
                                          child: Text(
                                            point,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF8B8B8B),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    const Text(
                      'This training will equip you with the essential building blocks of Python programming. By the end, you\'ll be able to write simple Python programs and have a strong foundation for further learning.',
                      style: TextStyle(fontSize: 12, color: Color(0xFF8B8B8B)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            CustomButton(
              text: 'Remind Me',
              onPressed: () {},
              color: const Color(0xFF8B8B8B),
            ),
            CustomButton(
              text: 'Check Pre-Requirements',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Prerequirement()));
              },
              color: const Color(0xFF077BD8),
            ),
            CustomButton(
              text: 'Start Assessment',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const AssessmentdetailedScreen()));
              },
              color: const Color(0xFF414ECA),
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
