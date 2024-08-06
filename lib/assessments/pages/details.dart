import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/question_rounds_description.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/custom_button.dart';
import 'package:trainings_and_assessments/assessments/widgets/global/description_container.dart';

class AssessmentsDetails extends StatelessWidget {
  const AssessmentsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Assessments',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            const AssessmentsDescription(
                assessmentName: 'Python Basics Assessment',
                providerName: 'ShareInfo',
                imagePath: 'assets/images/python.png',
                place: 'CE Thalassery'),
            CustomButton(
                text: 'Attempt Now',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuestionRoundsDescription(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
