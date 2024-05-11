// ignore_for_file: sort_child_properties_last, deprecated_member_use

import 'package:connerr/screens/scan1_page.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff315659),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo.PNG',
                height: 200,
              ),
            ),
            const Text(
              'monitor your plants health \n and know the best s cures.',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'ElMessiri',
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(14),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  fillColor: const Color(0xffFFFFFF),
                  filled: true,
                  border: InputBorder.none,
                  labelText: 'USERNAME',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Nunito',
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 8,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(14),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  fillColor: const Color(0xffFFFFFF),
                  filled: true,
                  border: InputBorder.none,
                  labelText: 'EMAIL ADDRESS',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 12,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 18,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(14),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  fillColor: const Color(0xffFFFFFF),
                  filled: true,
                  border: InputBorder.none,
                  labelText: 'password.....',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 14,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.amber,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(14),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  fillColor: const Color(0xffFFFFFF),
                  filled: true,
                  border: InputBorder.none,
                  labelText: 'confirm password.....',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 14,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.amber,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
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
                'Sign UP',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                // primary: const Color(0xff00C59B), // Background color
                backgroundColor: const Color(0xff00C59B),
                foregroundColor: Colors.white,
                minimumSize: const Size(90, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
