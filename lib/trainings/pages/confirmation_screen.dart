import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/trainings/pages/trainings_home.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

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
              height: screenHeight * .2,
            ),
            Image.asset(
              ImagePath.confoGif,
              width: screenWidth * 0.9,
            ),
            SizedBox(
              height: screenHeight * .09,
            ),
            const Text(
              'You are in Queue !',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            const Text(
              'We will Notify You !',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: screenHeight * .15,
            ),
            CustomButton(
              text: 'Go to Home !',
              color: CustomColor.darkBlue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const TrainingsHome()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
