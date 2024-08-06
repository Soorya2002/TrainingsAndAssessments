import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/mcq_description.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/custom_button.dart';

class WithoutMcq extends StatelessWidget {
  const WithoutMcq({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            Text(
              "Technical Assessment",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                  color: CustomColor.secondaryColor),
            ),
            Text(
              textAlign: TextAlign.center,
              "Technical Assessments only Unlock When You \nSubmit MCQ Rounds",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: CustomColor.fontColor),
            ),
          ],
        ),
        Positioned(
          bottom: screenHeight * .01,
          child: CustomButton(
            text: 'Attempt MCQ Rounds',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const McqDescription(),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}