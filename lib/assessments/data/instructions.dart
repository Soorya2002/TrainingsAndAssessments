import 'package:trainings_and_assessments/assessments/model/Instruction_shareinfo.dart';

class Instructions{
  static List<InstructionShareinfo> instructions = 
  [
    InstructionShareinfo('This section will contain [Number] MCQs covering various aspects of computer science and programming.', []),
    InstructionShareinfo('Questions may focus on topics like:', ['Programming fundamentals (e.g., variables, data types, control flow)','Algorithms and data structures (e.g., sorting, searching, arrays, linked lists)', 'Specific programming languages (questions may be tailored to a specific language mentioned in the job description)']),
    InstructionShareinfo('Each MCQ will have [Number] answer choices.', []),
    InstructionShareinfo('Choose the single best answer for each question.', []),
    InstructionShareinfo('There will be [Negative marking applicable/No negative marking] for incorrect answers. (Specify if there\'s a penalty for wrong answers)', []),
    InstructionShareinfo('This is a timed assessment. Please manage your time effectively between MCQs and explanations.', []),
    InstructionShareinfo('A basic code editor or scratchpad may be provided for note-taking purposes. (Specify if a code editor will be available)', []),
    InstructionShareinfo('Calculators or other external resources are not allowed.',[]),
    InstructionShareinfo('You may not collaborate with others or seek external help during the assessment.', []),
    InstructionShareinfo('All answers will be reviewed to assess your understanding and problem-solving skills.',[]),
  ];
}