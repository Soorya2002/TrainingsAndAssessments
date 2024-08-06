import 'package:trainings_and_assessments/assessments/model/mcq_model.dart';

class McqQuestionsAnswers {
  static List<McqModel> mcqQuestionsAnswers = [
    McqModel(
        'Which of the following is the correct file extension for a Python script?',
        ['.txt', '.pyc', '.python', '.py']),
    McqModel('Which of the following is NOT a valid data type in Python?',
        ['Integer', 'Float', 'String', 'List']),
    McqModel('How do you define a single-line comment in Python?',
        ['//comment', '!comment', '/*comment', '#comment']),
    McqModel('Which keyword is used to define a function in Python?',
        ['create', 'def', 'function', 'define']),
  ];
}
