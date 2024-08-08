import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/trainings/pages/trainings_home.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class AssessmentdetailedScreen extends StatelessWidget {
  const AssessmentdetailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .22,
            ),
            Image.asset(
              ImagePath.assessmentGif,
              width: screenWidth * 0.9,
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ShareInfo Assessments',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: CustomColor.darkOrange,
                  ),
                ),
                const Text(
                  'are only available when your institution publishes them out,',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.slateBlue,
                  ),
                ),
                const Text(
                  'We’ll Notify You !',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: CustomColor.slateBlue,
                  ),
                ),
                SizedBox(
                  height: screenHeight * .17,
                ),
                const Text(
                  "Need Help? Talk to Us !",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.fontColor,
                  ),
                ),
                SizedBox(
                  height: screenHeight * .01,
                ),
                CustomButton(
                  text: 'Return to Home !',
                  color: CustomColor.darkBlue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TrainingsHome(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
