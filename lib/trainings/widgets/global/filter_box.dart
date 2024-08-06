import 'package:flutter/material.dart';

class FilterBox extends StatelessWidget {
  final String labelText;
  final Color labelColor;
  final Color boxColor;

  const FilterBox({
    super.key,
    required this.labelText,
    required this.labelColor,
    required this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: screenWidth * 0.34,
              height: screenHeight * 0.042,
              decoration: ShapeDecoration(
                color: boxColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(0),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  labelText,
                  style: TextStyle(
                    color: labelColor,
                    fontSize: 11,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: screenWidth * 0.0012,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
      ],
    );
  }
}
