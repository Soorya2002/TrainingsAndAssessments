import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/aspirant_box.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/rank_container.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RankContainer(),
            const SizedBox(
              height: 20,
            ),
            AspirantBox(
                height: screenHeight * 0.1,
                rightPosition: 0.05,
                name: 'Ann Mary John',
                imagePath: ImagePath.profilePng,
                submissionTime: '3 Day 20 Hours',
                rank: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * .39,
                    height: 2,
                    color: const Color(0xFFE1D7D7),
                  ),
                  SizedBox(width: screenWidth * .01),
                  Container(
                    width: screenWidth * .1,
                    height: 2,
                    color: const Color(0xFFE1D7D7),
                  ),
                  SizedBox(width: screenWidth * .01),
                  Container(
                    width: screenWidth * .39,
                    height: 2,
                    color: const Color(0xFFE1D7D7),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: screenWidth * .05),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Live Competition',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3A0070),
                            ),
                          ),
                          TextSpan(
                            text: ' (20)',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF414ECA),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspirantBox(
                        height: 80,
                        name: 'Ann Mary John',
                        imagePath: ImagePath.profilePng,
                        submissionTime: '3 Day 20 Hours',
                        rank: index + 1),
                  );
                }),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * .2,
                  height: 2,
                  color: const Color(0xFFE1D7D7),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "  124 Aspirants",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: " are trying to Solve!  ",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * .2,
                  height: 2,
                  color: const Color(0xFFE1D7D7),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
