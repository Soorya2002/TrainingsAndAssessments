import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/pages/leaderboard_technical.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';

class SubmitScreen extends StatefulWidget {
  const SubmitScreen({super.key});

  @override
  _SubmitScreenState createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  int _counter = 10;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
          _redirectToLeaderboard();
        }
      });
    });
  }

  void _redirectToLeaderboard() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LeaderBoard()),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * .15,
          ),
          Stack(
            children: [
              Image.asset(
                ImagePath.allRightGif,
              ),
              const Positioned(
                bottom: 15,
                left: 60,
                child: Column(
                  children: [
                    Text(
                      "All Right !",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFEE5602),
                      ),
                    ),
                    Text(
                      "Your Assessment has been Submitted!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3A0070),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * .2,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: "You will be Automatically Redirected to",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: '\n                Live Leaderboards ',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF414ECA),
              ),
            ),
            TextSpan(
              text: "in",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ])),
          Text(
            "00:00:$_counter".padLeft(7, '0'),
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFFEE5602),
            ),
          ),
        ],
      ),
    );
  }
}
