import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/assessments_home.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * .2,
          ),
          Padding(
            padding: EdgeInsets.all(
              screenWidth * .06,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/splash_screen.gif',
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * .06,
          ),
          Expanded(
            child: Container(
              // height: double.infinity,
              width: screenWidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xffF5F1FF),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: screenHeight * .05,
                      ),
                      const Text(
                        "Why ?",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .01,
                      ),
                      const Text(
                        "Assessments",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * .01,
                      ),
                      const Column(
                        children: [
                          Text(
                            'Assessments are like check-ups for learning. They',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8B8B8B),
                            ),
                          ),
                          Text(
                            'show strengths, weaknesses, and areas to improve,',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8B8B8B),
                            ),
                          ),
                          Text(
                            'guiding both students and teachers for better',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8B8B8B),
                            ),
                          ),
                          Text(
                            'outcomes.',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8B8B8B),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * .05,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: screenHeight * .01,
                    child: CustomButton(
                      text: 'GET STARTED',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => const AssessmentsHome(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
