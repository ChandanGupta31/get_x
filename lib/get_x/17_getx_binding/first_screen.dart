import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/17_getx_binding/my_controller.dart';
import 'package:get_x/get_x/17_getx_binding/second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text(
            'The Value is ${Get.find<MyController>().count}',
            style: TextStyle(fontSize: 30),
          )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: (){
              Get.find<MyController>().increment();
            },
            child: Text('Increment'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: (){
              Get.to(SecondScreeen());

              // named navigation
              Get.toNamed('/home');
            },
            child: Text('Home'),
          )
        ],
      ),
    );
  }
}
