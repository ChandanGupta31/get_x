import 'dart:io';

import 'package:flutter/material.dart%20';
import 'package:get/get.dart';
import 'package:get_x/get_x/33_getx_image_picker/home_controller.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerHome extends StatelessWidget {
  ImagePickerHome({super.key});


  var controller = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => controller.selectedImagePath.value == ''
                ? Text(
                    'Select the Image',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                : Image.file(
                    File(
                      controller.selectedImagePath.value,
                    ),
                    height: 300,
              width: 300,
                  ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(() => Text(
                controller.selectedImageSize.value == ''
                    ? ''
                    : controller.selectedImageSize.value + 'MB',
                style: TextStyle(
                  fontSize: 16,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              controller.getImage(ImageSource.gallery);
            },
            child: Text(
              'Gallery',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              controller.getImage(ImageSource.camera);
            },
            child: Text(
              'Camera',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
