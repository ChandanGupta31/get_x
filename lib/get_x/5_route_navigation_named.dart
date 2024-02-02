import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedRouteNavigationScreen extends StatelessWidget {
  const NamedRouteNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Named Navigation'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Next Screen'),
          onPressed: (){
            Get.toNamed(
              '/home',
            );

            // Go to the next screen but no option to get back to old screen
            // Get.offNamed('/home');
            
            // Go the the next screen but clear all the previous screens
            // Get.offAndToNamed('/home');

            // Passing parameters
            // Get.toNamed(
            //   '/home?channel = Code&content = Flutter Getx'
            // );
          },
        ),
      ),
    );
  }
}
