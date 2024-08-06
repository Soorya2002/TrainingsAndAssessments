import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/data/instructions.dart';
import 'package:trainings_and_assessments/assessments/model/Instruction_shareinfo.dart';
import 'package:trainings_and_assessments/assessments/pages/mcq_questions.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/custom_button.dart';

class InstructionScreen extends StatelessWidget {
  const InstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final List<InstructionShareinfo> instructions = Instructions.instructions;
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              8,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    screenWidth * .1,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/start_assessment.gif',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/shareinfo_big.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * .007,
                ),
                Text(
                  "Instructions to ShareInfo Assessments*",
                  style: TextStyle(
                    color: CustomColor.secondaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Multiple Choice Questions (MCQs) (Estimated Time: 30 minutes)",
                  style: TextStyle(
                    color: CustomColor.fontColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: instructions.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ' • ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: CustomColor.fontColor,
                                  fontSize: 14,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  instructions[index].point,
                                  style: TextStyle(
                                    color: CustomColor.fontColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children:
                                instructions[index].subPoint.map((subPoint) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '     •  ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: CustomColor.fontColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      subPoint,
                                      style: TextStyle(
                                        color: CustomColor.fontColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          )
                        ],
                      );
                    },
                  ),
                ),
                CustomButton(
                    text: 'Start Now',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  McqQuestions(),
                        ),
                      );
                    })
              ],
            ),
          ),
        ));
  }
}