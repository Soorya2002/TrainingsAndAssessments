import 'package:flutter/material.dart';
import 'package:trainings_and_assessments/assessments/utils/colors/custom_color.dart';
import 'package:trainings_and_assessments/trainings/utils/image_path.dart';
import 'package:trainings_and_assessments/trainings/widgets/features/text_box.dart';

class TrainingContainer extends StatelessWidget {
  final double width;
  final String img;
  final String text1;
  final String texta;
  final String textb;
  final String textc;
  final String text2;
  final String date;
  final bool icon;
  final VoidCallback? onPressed;
  final List<Widget>? additionalChildren;

  const TrainingContainer(
      {super.key,
      required this.width,
      required this.img,
      required this.text1,
      required this.texta,
      required this.textb,
      required this.textc,
      required this.text2,
      required this.date,
      required this.icon,
      this.onPressed,
      this.additionalChildren});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: onPressed,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: screenWidth * .9,
            padding: const EdgeInsets.all(8.0),
            // height: height,
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(102, 139, 139, 139)),
              borderRadius: BorderRadius.circular(25),
              color: CustomColor.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 46,
                              height: 46,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: CustomColor.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(12.5),
                                  color: CustomColor.white),
                              child: Image.asset(img)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text1,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: texta,
                                    style: const TextStyle(
                                      color: CustomColor.darkOrange,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: textb,
                                    style: const TextStyle(
                                      color: CustomColor.fontColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: textc,
                                    style: const TextStyle(
                                      color: CustomColor.lightBlue,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    icon
                        ? IconButton(
                            onPressed: () {},
                            icon: Image.asset(ImagePath.notificationAddPng))
                        : const Text('')
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight * .001,
                    color: CustomColor.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text2,
                            style: const TextStyle(
                              color: CustomColor.fontColor,
                              fontSize: 12.5,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              TextBox(
                                width: screenWidth * .2,
                                text: 'On-Site',
                                borderColor: CustomColor.lightBlue,
                                textColor: CustomColor.lightBlue,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                date,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: CustomColor.darkRed,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * .007,
                          ),
                          TextBox(
                            width: screenWidth * .5,
                            text: 'ShareInfo for Learn Assessment',
                            borderColor: CustomColor.darkOrange,
                            textColor: CustomColor.darkOrange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (additionalChildren != null) ...additionalChildren!
              ],
            ),
          ),
        ),
      ),
    );
  }
}
