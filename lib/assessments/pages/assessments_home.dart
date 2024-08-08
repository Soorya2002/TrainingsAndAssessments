import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/details.dart';
import 'package:trainings_and_assessments/assessments/pages/splash_screen.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/custom_container.dart';
import 'package:trainings_and_assessments/trainings/pages/leaderboard.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';

class AssessmentsHome extends StatelessWidget {
  const AssessmentsHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // List of assessments
    final List<Map<String, String>> assessments = [
      {
        'assessmentName': 'Python Basics Assessment',
        'providerName': 'ShareInfo',
        'imagePath': ImagePath.pythonPng,
        'place': 'CE Thalassery',
      },
      {
        'assessmentName': 'Python Basics Assessment',
        'providerName': 'ShareInfo',
        'imagePath': ImagePath.pythonPng,
        'place': 'CE Thalassery',
      },
      {
        'assessmentName': 'Python Basics Assessment',
        'providerName': 'ShareInfo',
        'imagePath': ImagePath.pythonPng,
        'place': 'CE Thalassery',
      },
      {
        'assessmentName': 'Python Basics Assessment',
        'providerName': 'ShareInfo',
        'imagePath': ImagePath.pythonPng,
        'place': 'CE Thalassery',
      },
      {
        'assessmentName': 'Python Basics Assessment',
        'providerName': 'ShareInfo',
        'imagePath': ImagePath.pythonPng,
        'place': 'CE Thalassery',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => const SplashScreen()));
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LeaderboardScreen()));
                },
                icon: Image.asset(ImagePath.socialLeaderboardPng)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .02,
            ),
            SizedBox(
              width: screenWidth * .9,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0x7fd9d9d9),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: const Color(0xFFABABAB),
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Color(0xFFABABAB),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.transparent, width: 0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * .05, top: screenWidth * .05),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Ongoing Assessments",
                    style: TextStyle(
                      color: Color(0xFF414ECA),
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: assessments.length + 1,
              itemBuilder: (context, index) {
                if (index == assessments.length) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    child: const Text(
                      "More Assessments will Load Soon !",
                      style: TextStyle(
                        color: CustomColor.fontColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                }
                final assessment = assessments[index];
                return CustomContainer(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AssessmentsDetails()),
                    );
                  },
                  assessmentName: assessment['assessmentName']!,
                  providerName: assessment['providerName']!,
                  imagePath: assessment['imagePath']!,
                  place: assessment['place']!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
