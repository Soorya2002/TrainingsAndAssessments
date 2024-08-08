import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/filter_box.dart';

class FilterCategory extends StatefulWidget {
  const FilterCategory({super.key});

  @override
  State<FilterCategory> createState() => _FilterCategoryState();
}

class _FilterCategoryState extends State<FilterCategory> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Drawer(
      width: screenWidth * 0.4,
      child: Padding(
        padding: const EdgeInsets.only(right: 0),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImagePath.shareInfoPng,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.015),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.2),
                child: const Text(
                  'Trainings Mode',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF34A853),
                    fontSize: 10,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              const FilterBox(
                boxColor: Color(0xFFDEE0F3),
                labelColor: Color(0xFF4285F4),
                labelText: 'All',
              ),
              const FilterBox(
                boxColor: Color(0xFFFFF6DA),
                labelText: 'On-Site',
                labelColor: Color(0xFFC2930F),
              ),
              const FilterBox(
                labelText: 'Hybrid',
                labelColor: Color(0xFFEA4335),
                boxColor: Color(0xFFFCE1DF),
              ),
              const FilterBox(
                labelText: 'Remote',
                labelColor: Color(0xFF34A853),
                boxColor: Color(0xFFDEF9E5),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.2),
                child: const Text(
                  'Training Category',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFEA4335),
                    fontSize: 9,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              const FilterBox(
                labelText: 'Show All',
                labelColor: Color(0xFFC39410),
                boxColor: Color(0xFFFFF6DA),
              ),
              const FilterBox(
                  labelText: 'Technical',
                  labelColor: Color(0xFF4285F4),
                  boxColor: Color(0xFFDEE0F3)),
              const FilterBox(
                labelText: 'Aptitude',
                labelColor: Color(0xFF34A853),
                boxColor: Color(0xFFDEF9E5),
              ),
              const FilterBox(
                labelText: 'Masterclasses',
                labelColor: Color(0xFF9600C9),
                boxColor: Color(0xFFF5D8FF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
