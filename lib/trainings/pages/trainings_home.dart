import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/splash_screen.dart';
import 'package:trainings_and_assessments/trainings/pages/filter_category.dart';
import 'package:trainings_and_assessments/trainings/pages/training_description.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/global/training_container.dart';

class TrainingsHome extends StatefulWidget {
  const TrainingsHome({super.key});

  @override
  State<TrainingsHome> createState() => _TrainingsHomeState();
}

class _TrainingsHomeState extends State<TrainingsHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Trainings',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const SplashScreen()));
            },
            icon: Image.asset(ImagePath.dataExploration),
            color: const Color(0xFF414ECA),
          ),
          SizedBox(
            width: screenWidth * .03,
          ),
        ],
      ),
      endDrawer: const FilterCategory(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * .03,
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * .05,
                ),
                const Text(
                  "05 Upcoming Trainings",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF414ECA)),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .03,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                width: screenWidth * 0.9,
                child: TextField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0x7fd9d9d9),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: const Color(0xFFABABAB),
                  hintText: 'search',
                  hintStyle: const TextStyle(
                    color: Color(0xFFABABAB),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                    icon: Image.asset(ImagePath.filter),
                  ),
                  suffixIconColor: const Color(0xFF4285F4),
                  border: InputBorder.none,
                )),
              ),
            ),
            SizedBox(
              height: screenHeight * .02,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return TrainingContainer(
                  icon: true,
                  width: screenWidth * .9,
                  text1: 'Python Basics',
                  texta: 'ShareInfo\t',
                  textb: 'for\t',
                  textc: 'CE Thalassery',
                  img: ImagePath.pythonPng,
                  text2: 'Dr. Subhash || IIT Madras',
                  date: '07 Mar 2024; Thursday',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrainingDescription()));
                  },
                );
              },
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
