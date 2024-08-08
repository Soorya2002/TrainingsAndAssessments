import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/data/rounds_description.dart';
import 'package:trainings_and_assessments/assessments/model/question_rounds.dart';
import 'package:trainings_and_assessments/assessments/pages/leaderboard_technical.dart';
import 'package:trainings_and_assessments/assessments/pages/mcq_description.dart';
import 'package:trainings_and_assessments/assessments/pages/without_mcq.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/image_button.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/title_row.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';

class QuestionRoundsDescription extends StatelessWidget {
  const QuestionRoundsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    List<QuestionRounds> des = RoundsDescription.des;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Assessments',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const LeaderBoard()));
                },
                icon: Image.asset(ImagePath.socialLeaderboardPng)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleRow(
                imagePath: ImagePath.pythonPng,
                assessmentTitle: 'Python Basics',
                providerName: 'ShareInfo',
                place: 'CE Thalassery',
              ),
              Row(
                children: [
                  ImageButton(
                    imagePath: ImagePath.mcqPng,
                    text: 'MCQ',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const McqDescription(),
                        ),
                      );
                    },
                  ),
                  ImageButton(
                    imagePath: ImagePath.technicalPng,
                    text: 'Technical',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WithoutMcq()));
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: des.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            des[index].title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            des[index].preDescription,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: CustomColor.fontColor,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: des[index].points.map((point) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Text(
                                          '•',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: CustomColor.fontColor,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          point.point,
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: CustomColor.fontColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ...point.subPoints.map(
                                    (subPoint) => Padding(
                                      padding: const EdgeInsets.only(
                                        left: 16.0,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(right: 8.0),
                                            child: Text(
                                              '•',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: CustomColor.fontColor,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              subPoint,
                                              style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: CustomColor.fontColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            des[index].endDescription,
                            style: const TextStyle(
                              fontSize: 13,
                              color: CustomColor.fontColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
