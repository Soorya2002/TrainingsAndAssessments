import 'package:trainings_and_assessments/assessments/model/question_rounds.dart';

class RoundsDescription {
  static List<QuestionRounds> des = [
    QuestionRounds(
      'MCQ Rounds',
      'MCQ rounds, short for Multiple Choice Question rounds, are a common assessment format used in both aptitude and technical interviews. They allow for efficient evaluation of a candidate\'s knowledge base across a range of topics. Here\'s a breakdown:',
      [Points('Format: Candidates are presented with a set of questions where each question has several answer choices. Only one answer is typically correct.', []),
      Points('Benefits:', ['Efficiency: MCQs allow for quick assessment of a large number of candidates or a broad range of topics in a limited time frame.','Objectivity: Scoring is straightforward and eliminates potential bias from interviewers who might favor certain answer styles.','Standardization: MCQ rounds can be easily standardized across different locations or hiring teams.']),
      Points('Drawbacks:', ['Limited Depth: MCQs can only assess factual knowledge and may not reveal a candidate\'s problem-solving skills or ability to apply knowledge in real-world scenarios.','Guessing:  There\'s a chance of candidates getting lucky by guessing the correct answer.'])],
      'MCQ rounds are often used as a screening tool in the initial stages of the interview process. They can help identify candidates with a strong foundation in the required knowledge before moving on to more in-depth assessments like technical coding challenges or scenario-based discussions.'
    ),
    QuestionRounds(
      'Technical Rounds',
      'MCQ rounds are often used as a screening tool in the initial stages of the interview process. They can help identify candidates with a strong foundation in the required knowledge before moving on to more in-depth assessments like technical coding challenges or scenario-based discussions.',
      [Points('Problem-solving:  You\'ll be presented with a technical problem and expected to demonstrate your thought process and coding ability (if applicable) to solve it.', [],), 
      Points('Technical questioning:  The interviewer will ask questions to gauge your understanding of programming languages, frameworks, software, or engineering concepts relevant to the job.', [],),
      Points('Scenario-based discussions:  You might be presented with real-world scenarios faced by the company and asked how you\'d approach them technically.', [],),],
      'These rounds help employers determine if you can handle the technical aspects of the job and fit well with their team.'
    ),
  ];
}
