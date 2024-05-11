import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff305659),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(40),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      textAlign: TextAlign.left,
                      'About \n Us',
                      style: TextStyle(
                        fontFamily: 'ElMessiri',
                        fontSize: 44,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Icon(
                      Icons.people_outline,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              IconButton(
                padding: EdgeInsets.only(bottom: 200),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Padding(
                  padding: const EdgeInsets.all(28),
                  child: const Icon(
                    Icons.house_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(43),
              ),
              height: 162,
              width: 350,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'connor application for corn diseases detection which we make to detect corn diseases in corn ',
                  style: TextStyle(
                    fontFamily: 'Boogaloo',
                    fontSize: 26,
                    color: Color(0xff655B02),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 258,
              child: Stack(
                children: [
                  Container(
                    child: CustomPaint(
                      size: Size(double.infinity, 390),
                      painter: RPSCustomPainter(),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    right: 150,
                    bottom: 150,
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfff9f871),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    right: 300,
                    bottom: 250,
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    right: 50,
                    bottom: 270,
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfff9f871),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 300,
                    right: 10,
                    bottom: 30,
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfff9f871),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 250,
                    right: 40,
                    bottom: 200,
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
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
    path_0.moveTo(size.width * 0.0040000, size.height * 1.0040000);
    path_0.quadraticBezierTo(
        0, size.height * 0.6250000, 0, size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.1950000,
        size.height * 0.4430000,
        size.width * 0.1810000,
        size.height * 0.7410000,
        size.width * 0.3240000,
        size.height * 0.7400000);
    path_0.cubicTo(
        size.width * 0.4625000,
        size.height * 0.7260000,
        size.width * 0.5755000,
        size.height * 0.4600000,
        size.width * 0.7100000,
        size.height * 0.6000000);
    path_0.cubicTo(
        size.width * 0.8355000,
        size.height * 0.7160000,
        size.width * 0.7225000,
        size.height * 0.9980000,
        size.width * 0.8640000,
        size.height * 1.0520000);
    path_0.quadraticBezierTo(size.width * 0.8500000, size.height * 1.0880000,
        size.width * 0.7400000, size.height * 1.0080000);

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
