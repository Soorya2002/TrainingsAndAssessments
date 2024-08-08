import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/trainings/pages/trainings_home.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .2,
            ),
            Image.asset(
              'assets/images/confo.gif',
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
              color: Color(0xFF414eca),
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
