import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/data/mcq_instructions.dart';
import 'package:trainings_and_assessments/assessments/model/instruction_model.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/features/text_box.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/title_row.dart';

class InstructionContainer extends StatelessWidget {
  const InstructionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final List<String> texts = ['MCQ Level', 'Technical Test', 'Aptitude'];
    final List<InstructionModel> mcqInstructions =
        McqInstructions.mcqInstructions;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD9D9D9)),
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleRow(
            imagePath: 'assets/images/python.png',
            assessmentTitle: 'Python Basics',
            providerName: 'ShareInfo',
            place: 'CE Thalassery',
            iconButton: true,
            iconPath: 'assets/icons/notification_add.png',
          ),
          SizedBox(
            height: screenWidth * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: screenHeight * 0.001,
              color: const Color(0xFFD9D9D9),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dr. Subhash || IIT Madras",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: CustomColor.fontColor),
                ),
                const Text(
                  "07 Mar 2024; Thursday",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFF31919),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 42,
            width: screenWidth,
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: texts.length,
                itemBuilder: (context, index) {
                  return TextBox(
                    text: texts[index],
                    textColor: CustomColor.secondaryColor,
                    borderColor: CustomColor.secondaryColor,
                    horizontalPadding: 23,
                    verticalPadding: 8,
                  );
                }),
          ),
          Center(
            child: TextBox(
              text: "ShareInfo for Learn Assessment Ends on: 19 Mar 2024",
              textColor: CustomColor.secondaryColor,
              borderColor: CustomColor.secondaryColor,
              horizontalPadding: 31.5,
              verticalPadding: 8,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Instructions to ShareInfo Assessments*',
              style: TextStyle(
                fontSize: 12,
                color: CustomColor.secondaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: mcqInstructions.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: mcqInstructions[index].title,
                        style: TextStyle(
                            fontSize: 13,
                            color: CustomColor.fontColor,
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: mcqInstructions[index].description,
                        style: TextStyle(
                          fontSize: 13,
                          color: CustomColor.fontColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
