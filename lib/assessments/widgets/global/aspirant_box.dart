import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';

class AspirantBox extends StatelessWidget {
  final double height, rightPosition;
  final String name;
  final String imagePath;
  final String submissionTime;
  final int rank;
  final String user;

  const AspirantBox(
      {super.key,
      required this.height,
      required this.name,
      required this.imagePath,
      required this.submissionTime,
      required this.rank,
      this.rightPosition = .027,
      this.user = ''});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Center(
          child: Container(
            width: screenWidth * .9,
            height: height,
            decoration: const BoxDecoration(
              color: CustomColor.whiteShade2,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  imagePath,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: CustomColor.darkBlue,
                            ),
                          ),
                          TextSpan(
                            text: user,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: CustomColor.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Submitted on:$submissionTime',
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: CustomColor.black),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 90,
                ),
                Text(
                  rank.toString(),
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: CustomColor.green,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: screenWidth * rightPosition,
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight:  Radius.circular(20),
            ),
            child: Image.asset(
              ImagePath.aspirantBottomRightPng,
            ),
          ),
        ),
      ],
    );
  }
}
