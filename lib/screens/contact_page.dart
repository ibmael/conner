import 'package:connerr/screens/scan1_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: 400,
                  height: 140,
                  child: CustomPaint(
                    painter: RPSCustomPainter(),
                  ),
                ),
                CupertinoButton(
                  padding: EdgeInsets.only(left: 335, top: 12),
                  child: const Icon(
                    Icons.house_sharp,
                    color: Colors.white,
                    size: 48,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(48),
                  child: Center(
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                        fontFamily: 'ElMessiri',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        size: 45,
                        color: Color(0xff33595C),
                      ),
                      contentPadding: const EdgeInsets.all(18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      fillColor: const Color(0xffFFFFFF),
                      filled: true,
                      border: InputBorder.none,
                      labelText: 'Name',
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'ElMessiri',
                          fontSize: 20),
                      hintStyle: const TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 18,
                        fontFamily: 'ElMessiri',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email_rounded,
                        size: 45,
                        color: Color(0xff33595C),
                      ),
                      contentPadding: const EdgeInsets.all(18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      fillColor: const Color(0xffFFFFFF),
                      filled: true,
                      border: InputBorder.none,
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'ElMessiri',
                          fontSize: 20),
                      hintStyle: const TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 18,
                        fontFamily: 'ElMessiri',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.border_color_rounded,
                        size: 45,
                        color: Color(0xff33595C),
                      ),
                      contentPadding: const EdgeInsets.all(18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      fillColor: const Color(0xffFFFFFF),
                      filled: true,
                      border: InputBorder.none,
                      labelText: 'Title',
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'ElMessiri',
                          fontSize: 20),
                      hintStyle: const TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 18,
                        fontFamily: 'ElMessiri',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.message_rounded,
                        size: 45,
                        color: Color(0xff33595C),
                      ),
                      contentPadding: const EdgeInsets.all(40),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      fillColor: const Color(0xffFFFFFF),
                      filled: true,
                      border: InputBorder.none,
                      labelText: 'Message',
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'ElMessiri',
                          fontSize: 20),
                      hintStyle: const TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 18,
                        fontFamily: 'ElMessiri',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  child: CustomPaint(
                    size: Size(double.infinity, 245),
                    painter: RPSCustomPainter1(),
                  ),
                ),
                Positioned(
                  left: 120,
                  bottom: 70,
                  child: Container(
                    height: 90,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const Scan1();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'SEND IT!!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1f3f0f),
                          fontFamily: 'ElMessiri',
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        // primary: const Color(0xff00C59B), // Background color
                        backgroundColor: const Color(0xffffffff),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(100, 70),
                        shadowColor: Color(0xff43ac49),
                        elevation: 3,
                      ),
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
    path_0.moveTo(0, 0);
    path_0.quadraticBezierTo(0, size.height * -0.1250000, 0, 0);
    path_0.cubicTo(
        size.width * 0.0636667,
        size.height * 0.7450000,
        size.width * 0.2656667,
        size.height * 0.9910000,
        size.width * 0.5000000,
        size.height);
    path_0.cubicTo(
        size.width * 0.7066667,
        size.height * 0.9950000,
        size.width * 0.9413333,
        size.height * 0.7210000,
        size.width * 1.0066667,
        0);
    path_0.quadraticBezierTo(size.width * 1.0050000, size.height * -0.1250000,
        size.width, size.height * -0.0040000);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color(0xff34595c)
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

class RPSCustomPainter1 extends CustomPainter {
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
    path_0.moveTo(0, size.height);
    path_0.quadraticBezierTo(
        0, size.height * 0.6175000, 0, size.height * 0.4900000);
    path_0.cubicTo(
        size.width * 0.1070000,
        size.height * 0.5585000,
        size.width * 0.1570000,
        size.height * 0.7275000,
        size.width * 0.3360000,
        size.height * 0.7000000);
    path_0.cubicTo(
        size.width * 0.5450000,
        size.height * 0.6330000,
        size.width * 0.8270000,
        size.height * 0.0950000,
        size.width,
        size.height * 0.3000000);
    path_0.quadraticBezierTo(size.width * 1.0020000, size.height * 0.4565000,
        size.width, size.height * 1.0060000);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color(0xff34595c)
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
