// ignore_for_file: sort_child_properties_last, deprecated_member_use, non_constant_identifier_names

import 'package:connerr/screens/Confirm_new_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerficationCode extends StatelessWidget {
  const VerficationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff315659),
        appBar: AppBar(
          backgroundColor: const Color(0xff315659),
          title: Image.asset(
            'assets/images/try.png',
            height: 45.h,
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 48),
              child: Text(
                'Enter the \nverfication code',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Exo',
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
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
            Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.only(right: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const ConfirmNewPassword();
                      },
                    ),
                  );
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    fontFamily: 'Exo',
                    fontSize: 18.sp,
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
                Positioned(
                  child: SizedBox(
                    width: 360.w,
                    height: 393.h,
                    child: CustomPaint(
                      painter: RPSCustomPainter(),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  right: 250,
                  bottom: 400,
                  child: Container(
                    height: 25.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  right: 200,
                  bottom: 300,
                  child: Container(
                    height: 25.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff9f871),
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  right: 100,
                  bottom: 380,
                  child: Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff9f871),
                    ),
                  ),
                ),
                Positioned(
                  left: 90,
                  right: 10,
                  bottom: 260,
                  child: Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 350,
                  right: 10,
                  bottom: 320,
                  child: Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff9f871),
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  right: 100,
                  bottom: 150,
                  child: Container(
                    height: 30,
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
        0, size.height * 0.6250000, 0, size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.1970000,
        size.height * 0.4230000,
        size.width * 0.2870000,
        size.height * 0.8570000,
        size.width * 0.5080000,
        size.height * 0.8320000);
    path_0.cubicTo(
        size.width * 0.6705000,
        size.height * 0.8060000,
        size.width * 0.8035000,
        size.height * 0.3170000,
        size.width * 0.9940000,
        size.height * 0.4120000);
    path_0.quadraticBezierTo(size.width * 1.0045000, size.height * 0.5510000,
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
