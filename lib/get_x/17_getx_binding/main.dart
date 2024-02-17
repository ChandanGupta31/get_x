import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_x/get_x/17_getx_binding/first_screen.dart';
import 'package:get_x/get_x/17_getx_binding/home_controller.dart';
import 'package:get_x/get_x/17_getx_binding/second_screen.dart';

import 'controller_binding.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // we can also apply binding at route level
      initialBinding: AllControllerBinding(),
      title: 'Binding',
      home: FirstScreen(),

    );
  }
}
