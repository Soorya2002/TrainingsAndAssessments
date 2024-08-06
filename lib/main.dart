import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:trainings_and_assessments/assessments/pages/splash_screen.dart';

void main(){
  runApp(const MaterialApp(
    home: SplashScreen(),
    ));
}
=======
import 'package:trainings_and_assessments/trainings/pages/trainings_home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const TrainingsHome(),
    theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.white)),
  ));
}
>>>>>>> 6b4298cd5405b9db6acdaaeadb51c9cd8cd3f8fa
