import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TopBackgroundLoginScreen extends StatelessWidget {
  const TopBackgroundLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          SizedBox(
            height: 250.h,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 100,
                  bottom: 15,
                  left: 120,
                  right: 150,
                  child: Image.asset(
                    'assets/images/signin2.png',
                    height: 100.h,
                  ),
                ),
                Positioned(
                  top: 100,
                  bottom: 25,
                  left: 160,
                  right: 90,
                  child: Image.asset(
                    'assets/images/signin1.png',
                    height: 120.h,
                  ),
                ),
                SingleChildScrollView(
                  child: Center(
                    heightFactor: 8.5.h,
                    child: Text(
                      'WELCOME',
                      style: TextStyle(
                        shadows: const[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 5.0,
                            color: Color.fromARGB(125, 0, 0, 255),
                          ),
                        ],
                        color: const Color(0xffFFE8D2),
                        fontSize: 20.h,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Boogaloo',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ])
      ],
    );
  }
}
