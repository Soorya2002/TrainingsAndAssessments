import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/technical_description.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/custom_button.dart';

class SuccessMcq extends StatelessWidget {
  const SuccessMcq({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenSize.height * .23),
          Image.asset(
            'assets/images/success_mcq.gif',
            height: screenSize.height * .4,
            width: screenSize.width * .8,
          ),
          const Text(
            "Success !",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF260446),
            ),
          ),
          SizedBox(
            height: screenSize.height * .007,
          ),
          Center(
            child: Text(
              "Leaderboards are only Available after the\n     Approval by your Institution side !",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.fontColor),
            ),
          ),
          SizedBox(
            height: screenSize.height * .15,
          ),
          CustomButton(
            text: 'Try Technical Assessment',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TechnicalDescription(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
