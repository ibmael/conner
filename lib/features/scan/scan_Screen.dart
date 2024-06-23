import 'dart:io';
import 'package:conner/core/helper/extensions.dart';
import 'package:conner/core/networking/shared_preferences.dart';
import 'package:conner/core/routing/routes.dart';
import 'package:conner/features/ai_model/service/http_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conner/core/helper/spacing.dart';
import 'package:conner/core/theme/app_colors.dart';
import '../contact_us/ui/contact_page.dart';
import 'widgets/about_us.dart';

class ScanImgScreen extends StatefulWidget {
  const ScanImgScreen({super.key});

  @override
  State<ScanImgScreen> createState() => _ScanImgScreenState();
}

class _ScanImgScreenState extends State<ScanImgScreen> {
  File? filePath;
  String? prediction;
  String? treatment;

  pickImageGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    setState(() {
      filePath = File(image.path);
      prediction = null;
      treatment = null;
    });
  }

  pickImageCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image == null) return;

    setState(() {
      filePath = File(image.path);
      prediction = null;
      treatment = null;
    });
  }

  Future<void> uploadImage() async {
    if (filePath != null) {
      ApiServiceNew apiService = ApiServiceNew();
      Map<String, String> response = await apiService.uploadImage(filePath!);

      setState(() {
        prediction = response['prediction'];
        treatment = response['treatment'];
      });
    }
  }

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
            ListTile(
              leading: const Icon(
                Icons.logout_rounded,
              ),
              title: const Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                CacheHelper.removeCacheData(key: "token");
                    context.pushReplacementNamed(Routes.loginScreen);
                
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
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.buttonColor.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: filePath == null
                    ? const Text('')
                    : Image.file(
                        filePath!,
                        fit: BoxFit.fill,
                      ),
              ),
              verticalSpace(20),
              prediction == null
                  ? const SizedBox.shrink()
                  : Column(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Prediction: ",
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              prediction!,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "Treatment: ",
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              treatment!,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
              verticalSpace(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: pickImageCamera,
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        foregroundColor: Colors.black),
                    child: const Text(
                      "Take a Photo",
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: pickImageGallery,
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        foregroundColor: Colors.black),
                    child: const Text(
                      "Pick from Gallery",
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
              ElevatedButton(
                onPressed: uploadImage,
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    foregroundColor: Colors.black),
                child: const Text(
                  "Upload Image",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
