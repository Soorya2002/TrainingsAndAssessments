import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:trainings_and_assessments/trainings/widgets/features/text_box.dart';

class TrainingContainer extends StatelessWidget {
  final double width;
  // final double height;
  final String img;
  final String text1;
  final String texta;
  final String textb;
  final String textc;
  final String text2;
  final String date;
  final IconData? myIconData;
  final VoidCallback? onPressed;
  final List<Widget>? additionalChildren;

  const TrainingContainer(
      {super.key,
      required this.width,
      // required this.height,
      required this.img,
      required this.text1,
      required this.texta,
      required this.textb,
      required this.textc,
      required this.text2,
      required this.date,
      this.myIconData = Symbols.notification_add,
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
            padding: EdgeInsets.all(8.0),
            // height: height,
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(102, 139, 139, 139)),
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Column(
              children: [
                // SizedBox(
                //   height: screenHeight * .02,
                // ),
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
                                    color: const Color.fromARGB(
                                        102, 139, 139, 139),
                                  ),
                                  borderRadius: BorderRadius.circular(12.5),
                                  color: Colors.white),
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
                                      color: Colors.orange,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: textb,
                                    style: const TextStyle(
                                      color: Color(0xFF8B8B8B),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: textc,
                                    style: const TextStyle(
                                      color: Color(0xFF077BD8),
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
                    Icon(
                      myIconData,
                      color: const Color(0xFF414ECA),
                      size: 28,
                    )
                  ],
                ),
                // SizedBox(
                //   height: screenHeight * .015,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // width: screenWidth * 0.8,
                    height: screenHeight * .001,
                    color: const Color(0xFFD9D9D9),
                  ),
                ),
                // SizedBox(
                //   height: screenHeight * .01,
                // ),
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
                              color: Color(0xFF8B8B8B),
                              fontSize: 12.5,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextBox(
                                width: screenWidth * .2,
                                text: 'On-Site',
                                borderColor: Color(0xFF1B94F6),
                                textColor: Color(0xFF1B94F6),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                date,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFF31919),
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
                            borderColor: Color(0xffEE5602),
                            textColor: Color(0xffEE5602),
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