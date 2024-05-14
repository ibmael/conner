import 'package:conner/core/helper/spacing.dart';
import 'package:conner/core/theme/app_colors.dart';
import 'package:conner/features/scan/widgets/about_us.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/contact_page.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
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
            const DrawerHeader(
              child: Text(' '),
              decoration: BoxDecoration(
                color: AppColor.buttonColor,
              ),
            ),
            ListTile(
              leading: const Icon(
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
              leading: const Icon(
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
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                child: Image.asset('assets/images/corn(2).png'),
              ),
              verticalSpace(20),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColor.buttonColor,
                      indent: 25,
                      endIndent: 70,
                      thickness: 3,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColor.buttonColor,
                      indent: 90,
                      endIndent: 25,
                      thickness: 3,
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
              Container(
                height: 270,
                width: 280,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.buttonColor.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                  
                ),
              ),
              verticalSpace(30),
              GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 35,
                  backgroundColor: AppColor.buttonColor,
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 40,
                    color: AppColor.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
