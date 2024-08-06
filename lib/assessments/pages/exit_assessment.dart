import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/custom_button.dart';


class ExitScreen extends StatelessWidget {
  const ExitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/exit.gif'),
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
                  color: Colors.black,
                ),
              ),
              const Text(
                "Once You Prepared Well !",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF414ECA),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              left: 20,
              child: CustomButton(text: 'Exit Now!',onPressed: (){}, ))
        ],
      ),
    );
  }
}