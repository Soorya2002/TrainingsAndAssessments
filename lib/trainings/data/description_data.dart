import 'package:trainings_and_assessments/trainings/model/description.dart';

class DescriptionData {
  static List<DescriptionModel> descriptionData = [
    DescriptionModel('Introduction to Python', [
      'What is Python and why is it popular?',
      'Setting up your Python development environment'
    ]),
    DescriptionModel('Python Fundamentals', [
      'Understanding basic syntax and data types (numbers, strings, booleans, etc.)'
          'Working with variables and operators (arithmetic, comparison, logical)'
    ]),
    DescriptionModel('Control Flow', [
      'Using conditional statements (if/else) for decision making',
      'Implementing loops (for, while) for repetitive tasks'
    ]),
    DescriptionModel('Functions', [
      'Defining and using functions to organize code',
      'Understanding arguments and return values'
    ]),
    DescriptionModel('Data Structures',
        ['Creating and manipulating lists, tuples, and dictionaries']),
    DescriptionModel('Input and Output', [
      'Getting user input using the input() function',
      'Formatting and printing output to the console'
    ]),
    DescriptionModel('Debugging Techniques',
        ['Identifying and fixing errors in your Python code']),
    DescriptionModel('Additional Topics (Optional)', [
      'Introduction to file handling (reading and writing to files)',
      'Basic modules and packages in Python'
    ]),
    DescriptionModel('Practice and Next Steps', [
      'Resources for further learning and practice exercises',
      'Exploring potential applications of Python'
    ]),
  ];
}
