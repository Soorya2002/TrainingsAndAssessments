import 'package:flutter/material.dart';

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
              color: Color.fromARGB(255, 216, 231, 244),
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
                              color: Color(0xFF414ECA),
                            ),
                          ),
                          TextSpan(
                            text: user,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF34A853),
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
                          color: Colors.black),
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
                    color: const Color(0xFF34A853),
                  ),
                ),
                // Image.asset('assets/arrowup.png'),
              ],
            ),
          ),
        ),
        Positioned(
          right: screenWidth * rightPosition,
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: const Radius.circular(20),
            ),
            child: Image.asset(
              'assets/images/aspirant_bottom_right.png',
            ),
          ),
        ),
      ],
    );
  }
}
