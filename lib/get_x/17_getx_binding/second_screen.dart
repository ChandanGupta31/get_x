import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/17_getx_binding/home_controller.dart';

class SecondScreeen extends StatelessWidget {
  SecondScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text(
            'The value is ${Get.find<HomeController>().count}',
            style: TextStyle(
              fontSize: 30
            ),
          )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: (){
              Get.find<HomeController>().increment();
            },
            child: Text('Inrement'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: (){
              Get.back();
            },
            child: Text('Back'),
          )
        ],
      ),
    );
  }
}
