// ignore_for_file: sized_box_for_whitespace, unnecessary_const, sort_child_properties_last, deprecated_member_use

import 'package:connerr/screens/forget_password.dart';
import 'package:connerr/screens/register.dart';
import 'package:connerr/screens/scan1_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff315659),
        // appBar: AppBar(
        //   leading: const BackButton(color: Colors.white),
        //   backgroundColor: const Color(0xff304d4f),

        //   actions: [
        //     Row(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.only(right: 101),
        //           child: CircleAvatar(
        //             radius: 95,
        //             backgroundColor: const Color(0xff304d4f),
        //             child: Image.asset(
        //               'assets/images/try.png',
        //               height: 200,
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        appBar: AppBar(
          backgroundColor: const Color(0xff304d4f),
          title: Image.asset(
            'assets/images/try.png',
            height: 45.h,
          ),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
                            shadows: <Shadow>[
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
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    border: InputBorder.none,
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'ElMessiri',
                    ),
                    hintStyle: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 18.sp,
                      fontFamily: 'ElMessiri',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    border: InputBorder.none,
                    labelText: 'password.....',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'ElMessiri',
                    ),
                    hintStyle: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.amber,
                      fontFamily: 'ElMessiri',
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 23.h,
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 55),
                  child: const Text(
                    'forget password?!',
                    style: TextStyle(
                      fontFamily: 'ElMessiri',
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const ForgetPassword();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Scan1();
                      },
                    ),
                  );
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'ElMessiri',
                    fontSize: 18.sp,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  // primary: const Color(0xff00C59B),
                  backgroundColor: const Color(0xff00C59B),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(100, 50),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                child: Container(
                  height: 23.h,
                  alignment: Alignment.center,
                  // padding: EdgeInsets.only(left: 55),
                  child: const Text(
                    'dont have an account ?..',
                    style: TextStyle(
                      fontFamily: 'ElMessiri',
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Register();
                      },
                    ),
                  );
                },
              ),
              Divider(
                height: 1.h,
                indent: 100,
                endIndent: 100,
                thickness: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
