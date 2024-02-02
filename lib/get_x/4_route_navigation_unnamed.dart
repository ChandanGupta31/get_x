import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/1_snack_bar.dart';
import 'package:get_x/get_x/3_bottom_sheed_and_dynamic_view.dart';

class RouteNavigationUnnamedScreen extends StatelessWidget {
  const RouteNavigationUnnamedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Unnamed'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Navigate'),
          onPressed: () async {
            Get.to(
              BottomSheetAndDynamicViewScreen(),

              // To show the screen as dialog
              fullscreenDialog: true,

              // TO provide animation/transition
              transition: Transition.downToUp,

              // duration of transition
              duration: Duration(
                seconds: 2,
              ),

              // Curve Animation
              curve: Curves.easeInCirc,
            );

            // Other methods of get to navigate to the new screen

            // Go to other screen and not to comeback
            Get.off(BottomSheetAndDynamicViewScreen());

            // Go to new screen and clear all the previous screens
            Get.offAll(BottomSheetAndDynamicViewScreen());

            // Go the the new screen with argument
            Get.to(BottomSheetAndDynamicViewScreen(), arguments: "Data from Navigation");   // to access this argument use Get.arguments

            // To get data back from the navigated screen
            // The navigated screen uses Get.back() function with result attribute to send back the data
            var data = await Get.to(BottomSheetAndDynamicViewScreen());
            print(data);
          },

        ),
      ),
    );
  }
}
