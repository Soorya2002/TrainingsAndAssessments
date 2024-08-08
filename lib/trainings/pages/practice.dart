import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/trainings/pages/trainings_home.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/custom_button.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * .2,
          ),
          Image.asset(
            'assets/images/error1.gif',
            width: screenWidth * 0.8,
          ),
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [Color(0xFFF94612), Color(0xFF4A46FA)],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ).createShader(bounds);
            },
            child: const Text(
              'ERROR 123 :)',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          const Text.rich(
            TextSpan(
              text: 'Sorry',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
              children: [
                TextSpan(
                  text: '\tit’s',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: '\tNot You,',
                ),
                TextSpan(
                  text: '\tit’s',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: '\tus !',
                ),
              ],
            ),
          ),
          const Column(
            children: [
              Text(
                "This Feature is Limited for Few Users !",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Our Development Team Working beyond their limit to',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFF94612),
                ),
              ),
              Text(
                'Push this feature as Public,',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFF94612),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'We Will Notify you when it’s Ready for',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFF94612),
                    ),
                  ),
                  Text(
                    '\tAccess!',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFFF94612),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * .2,
          ),
          CustomButton(
            text: 'Return Trainings !',
            color: Color(0xFF077BD8),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TrainingsHome()));
            },
          ),
        ],
      ),
    );
  }
}
