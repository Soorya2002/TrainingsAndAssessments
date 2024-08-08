import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/mcq_description.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class WithoutMcq extends StatelessWidget {
  const WithoutMcq({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
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
                ImagePath.splashScreenGif,
              ),
            ),
          ),
          const Text(
            "Technical Assessment",
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: CustomColor.darkOrange),
          ),
          const Text(
            textAlign: TextAlign.center,
            "Technical Assessments only Unlock When You \nSubmit MCQ Rounds",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: CustomColor.fontColor),
          ),
          SizedBox(
            height: screenHeight * .15,
          ),
          CustomButton(
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
        ],
      ),
    );
  }
}
