import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/trainings/pages/trainings_home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const TrainingsHome(),
    theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.white)),
  ));
}

