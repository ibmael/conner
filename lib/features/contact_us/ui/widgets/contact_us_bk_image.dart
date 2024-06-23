import 'dart:ui';

import 'package:flutter/material.dart';

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