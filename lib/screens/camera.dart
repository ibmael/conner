import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

 class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}
class _CameraState extends State<Camera>
 {
   File ? _selectedImage ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
appBar: AppBar(
        backgroundColor: const Color(0xff304d4f),
        title: Image.asset(
          'assets/images/try.png',
          height: 50,
        ),
        centerTitle: true,
      ),
      body:
       Center(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 10,bottom: 10),
               child: ElevatedButton(
                      onPressed: () {_pickImageFromGallery();},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 60),
                        backgroundColor: const Color(0xff33595C),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      child: const Text('Upload image from gallery',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
             ),
         ElevatedButton(
          onPressed: () { _pickImageFromCamera(); }
         ,style: ElevatedButton.styleFrom(
           minimumSize: const Size(200, 60),
           backgroundColor: const Color(0xff33595C),
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))) ,
           child:const Text('upload image from camera',
           style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white 
           ),) ),
                  const SizedBox(height: 20,),
                  _selectedImage !=null ? Image.file(_selectedImage!) : const Text('please select an image')
           ],
         ),
       ),
    );
  }
  Future _pickImageFromGallery ()async
  {
 final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery );
 if (returnedImage== null) return;
 setState(() 
  { _selectedImage = File(returnedImage.path ); });
  }
Future _pickImageFromCamera ()async
  {
 final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera );
 if (returnedImage== null) return;
 setState(() {
   _selectedImage = File(returnedImage.path );});
  }
}