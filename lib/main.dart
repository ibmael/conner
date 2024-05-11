// ignore_for_file: unnecessary_const

import 'package:connerr/screens/splash.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Conner());
}

class Conner extends StatelessWidget {
  const Conner({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (BuildContext context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash(),
          );
        });
  }
}
