import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/assessments_home.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class ExitScreen extends StatelessWidget {
  const ExitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * .3,
          ),
          Image.asset(ImagePath.exitGif),
          const Text(
            "You were Quit the Assessment",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const Text(
            "You can Attempt Again",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: CustomColor.black,
            ),
          ),
          const Text(
            "Once You Prepared Well !",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: CustomColor.darkBlue,
            ),
          ),
          SizedBox(
            height: screenHeight * .2,
          ),
          CustomButton(
            text: 'Exit Now!',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const AssessmentsHome()));
            },
          )
        ],
      ),
    );
  }
}
