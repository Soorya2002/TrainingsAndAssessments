import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/exit_assessment.dart';
import 'package:trainings_and_assessments/assessments/pages/submit_assessment.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/features/text_box.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';


class TechnicalAssessment extends StatelessWidget {
  const TechnicalAssessment({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/images/shareinfo_medium.png'),
        ),
        actions: [
          const Text(
            "Quit",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFFF31919),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const ExitScreen()));
            },
            icon: Image.asset(
              'assets/icons/quit.png',
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextBox(
                          text: '1',
                          textColor: CustomColor.secondaryColor,
                          borderColor: CustomColor.secondaryColor),
                      TextBox(
                          text: '00:59',
                          textColor: CustomColor.secondaryColor,
                          borderColor: CustomColor.secondaryColor),
                    ],
                  ),
                  TextBox(
                      text: '1/25',
                      textColor: CustomColor.secondaryColor,
                      borderColor: CustomColor.secondaryColor)
                ],
              ),
              SizedBox(
                height: screenHeight * .02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Write a Python program that calculates the area of a \nrectangle. The program should:',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffEE5602),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .015,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '1. Prompt the user to enter the rectangle\'s width and \nheight (as integers). \n2. Calculate the area (width multiplied by height). \n3. Print the calculated area to the console with an \nappropriate message.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * .02,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: screenHeight * .015,
                      ),
                      Center(
                        child: Container(
                          width: screenWidth * .9,
                          height: screenHeight * .08,
                          decoration: const BoxDecoration(
                            color: Color(0xffDADEFF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: screenWidth * .15,
                                height: screenHeight * .04,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff414ECA),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'main.py',
                                    style: TextStyle(
                                      color: Color(0xff414ECA),
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: screenWidth * .15,
                                height: screenHeight * .04,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff8B8B8B80),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'output',
                                    style: TextStyle(
                                      color: Color(0xff8B8B8B80),
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth * .9,
                        height: screenHeight * .36,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 235, 233, 233),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\t\t1\t',
                                    style: TextStyle(
                                      color: Color(0xff414ECA),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\t#Code Here',
                                    style: TextStyle(
                                      color: Color(0xff34A853),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * .01,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: screenWidth * .06,
                                ),
                                const Text(
                                  'print("Hey shareInfo")',
                                  style: TextStyle(
                                    color: Color(0xff414ECA),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: screenWidth * .17,
                      height: screenHeight * .035,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff414ECA),
                      ),
                      child: const Center(
                        child: Text(
                          'Run',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Should Mark one Answer or Skip to Continue",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF8B8B8B),
                ),
              ),
              CustomButton(text: 'Next Question', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const SubmitScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
