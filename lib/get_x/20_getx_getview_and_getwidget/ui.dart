import 'package:flutter/material.dart ';
import 'package:get/get.dart';
import 'package:get_x/get_x/20_getx_getview_and_getwidget/business_logic.dart';

class GetViewAndGetWidget extends GetView<CountController> {
  GetViewAndGetWidget({super.key});

  // GetView
  // If we have a single controller as a dependency then we can use GetView
  // instead of Stateless Widget and avoid writing Get.find

  // GetWidget
  // It is similar to GetView with one difference it gives the same instance of
  // Get.find everytime. It become very useful when used in combination with
  // Get.create

  @override
  Widget build(BuildContext context) {
    Get.put(CountController());
    // Get.create(() => CountController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                controller.count.toString(),
                style: TextStyle(fontSize: 30),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                print(controller.hashCode);
                controller.increment();
              },
              child: Text('Increment'))
        ],
      ),
    );
  }
}
