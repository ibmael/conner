// ignore_for_file: non_constant_identifier_names, file_names, avoid_unnecessary_containers, sort_child_properties_last, deprecated_member_use

import 'package:connerr/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmNewPassword extends StatelessWidget {
  const ConfirmNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff304d4f),
      appBar: AppBar(
        backgroundColor: const Color(0xff304d4f),
        title: Image.asset(
          'assets/images/try.png',
          height: 45.h,
        ),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 58.h,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Confirm new password',
              style: TextStyle(
                fontSize: 21.sp,
                fontFamily: 'Exo',
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(14),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                fillColor: const Color(0xffFFFFFF),
                filled: true,
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(14),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                fillColor: const Color(0xffFFFFFF),
                filled: true,
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(right: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomeScreen();
                    },
                  ),
                );
              },
              child: Container(
                child: Text(
                  'CONFIRM',
                  style: TextStyle(
                    fontFamily: 'Exo',
                    fontSize: 16.h,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                // primary: const Color(0xff00C59B), // Background color
                backgroundColor: const Color(0xff00C59B),
                foregroundColor: Colors.white,
                minimumSize: const Size(100, 50),
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                width: 357.w,
                height: 310.h,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                ),
              ),
              Positioned(
                left: 200,
                right: 150,
                bottom: 100,
                child: Container(
                  height: 25.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              // Positioned(
              //   left: 60,
              //   right: 290,
              //   bottom: 250,
              //   child: Container(
              //     height: 30,
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              Positioned(
                left: 20,
                right: 340,
                bottom: 180,
                child: Container(
                  height: 25.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff9f871),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                right: 250,
                bottom: 358,
                child: Container(
                  height: 25.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 100,
                bottom: 280,
                child: Container(
                  height: 25.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff9f871),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                right: 50,
                bottom: 240,
                child: Container(
                  height: 25.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff9f871),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 1.0040000);
    path_0.quadraticBezierTo(
        0, size.height * 0.7370000, 0, size.height * 0.6120000);
    path_0.cubicTo(
        size.width * 0.1970000,
        size.height * 0.5350000,
        size.width * 0.2870000,
        size.height * 0.9850000,
        size.width * 0.5080000,
        size.height * 0.9600000);
    path_0.cubicTo(
        size.width * 0.6705000,
        size.height * 0.9340000,
        size.width * 0.8195000,
        size.height * 0.4210000,
        size.width * 1.0100000,
        size.height * 0.5160000);
    path_0.quadraticBezierTo(size.width * 1.0205000, size.height * 0.6550000,
        size.width, size.height * 1.0080000);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color(0xff479c7c)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
