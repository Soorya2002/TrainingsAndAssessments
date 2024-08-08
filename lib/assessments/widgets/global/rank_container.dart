import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/assessments/widgets/features/aspirant_image.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';

class RankContainer extends StatelessWidget {
  const RankContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 35),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: screenWidth * .9,
                height: screenHeight * .34,
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColor.whiteShade2 ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                        ),
                        child: Image.asset(ImagePath.bottomLeftPng),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(25),
                        ),
                        child: Image.asset(ImagePath.topRightPng),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(25),
                        ),
                        child: Image.asset(ImagePath.bottomRightPng),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            "Practice Leaderboards",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: CustomColor.slateBlue,
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Available in ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF414ECA),
                                  ),
                                ),
                                TextSpan(
                                  text: '04 Days 24 Hours ',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: CustomColor.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: screenHeight * .13,
                      left: screenWidth * .1,
                      child: const AspirantImage(
                        height: 80,
                        width: 80,
                        text: '2nd',
                        fontSize: 14,
                      ),
                    ),
                    const Center(
                      child: Column(
                        children: [
                          SizedBox(height: 55),
                          AspirantImage(
                            height: 100,
                            width: 100,
                            text: '1st',
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: screenHeight * .14,
                      right: screenWidth * .12,
                      child: const AspirantImage(
                        height: 70,
                        width: 70,
                        text: '3rd',
                        fontSize: 12,
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 95,
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Click Here",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: CustomColor.fontColor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: " How ",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: CustomColor.fontColor,
                              ),
                            ),
                            TextSpan(
                              text: "Leaderboard ",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: CustomColor.darkOrange,
                              ),
                            ),
                            TextSpan(
                              text: "Evaluate! ",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: CustomColor.fontColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -10,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(ImagePath.backArrowPng),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
