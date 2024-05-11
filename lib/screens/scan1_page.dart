import 'package:connerr/screens/contact_page.dart';
import 'package:connerr/screens/about_us.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Scan1 extends StatelessWidget {
  const Scan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(
          'assets/images/home.png',
          height: 70.h,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(' '),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.phone_rounded,
              ),
              title: const Text(
                'CONTACT US',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return (const Contact());
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people_alt_rounded,
              ),
              title: const Text(
                'ABOUT US',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return (const AboutUs());
                }));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 6,
                  spreadRadius: -8,
                )
              ],
              image: const DecorationImage(
                image: AssetImage('assets/images/corn(2).png'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(90),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  color: Color(0xff50982e),
                  indent: 25,
                  endIndent: 70,
                  thickness: 3,
                ),
              ),
              Expanded(
                child: Divider(
                  color: Color(0xff50982e),
                  indent: 90,
                  endIndent: 25,
                  thickness: 3,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: 270,
                  width: 280,
                  child: CustomPaint(
                    painter: RPSCustomPainter1(),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 8,
                        spreadRadius: -8,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  height: 500,
                  child: CustomPaint(
                    size: Size(double.infinity, 110),
                    painter: RPSCustomPainter(),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                bottom: 35,
                child: Container(
                  child: CircleAvatar(
                    radius: 38,
                    backgroundColor: const Color(0xff34575D),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
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
    path_0.moveTo(size.width * -0.0040000, size.height * 1.0160000);
    path_0.quadraticBezierTo(size.width * -0.0080000, size.height * 0.8410000,
        size.width * -0.0080000, size.height * 0.7160000);
    path_0.cubicTo(
        size.width * 0.1250000,
        size.height * 0.6125000,
        size.width * 0.1910000,
        size.height * 0.9175000,
        size.width * 0.3440000,
        size.height * 0.8980000);
    path_0.cubicTo(
        size.width * 0.4470000,
        size.height * 0.8835000,
        size.width * 0.5850000,
        size.height * 0.6625000,
        size.width * 0.6880000,
        size.height * 0.9120000);
    path_0.quadraticBezierTo(size.width * 0.7250000, size.height * 1.0710000,
        size.width * 0.7320000, size.height * 1.0480000);

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
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color(0xff665c5c)
      ..style = PaintingStyle.stroke
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

class RPSCustomPainter2 extends CustomPainter {
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
    path_0.moveTo(size.width * 0.6580000, 0);
    path_0.quadraticBezierTo(
        size.width * 0.7870000, 0, size.width * 0.8300000, 0);
    path_0.cubicTo(
        size.width * 0.6955000,
        size.height * 0.0745000,
        size.width * 0.9585000,
        size.height * 0.2835000,
        size.width * 0.9000000,
        size.height * 0.4100000);
    path_0.quadraticBezierTo(size.width * 0.8890000, size.height * 0.7095000,
        size.width, size.height);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
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
