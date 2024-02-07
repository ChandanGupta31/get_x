import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/11_getx_controller_lifecycle/business_logic.dart';

class GetxControllerLifeCycle extends StatelessWidget {
  GetxControllerLifeCycle({super.key});


  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<MyController>(
            // init: myController.increment(),
            // dispose: myController.close(),
            builder: (controller) {
              return Text(
                'The Value is ${myController.count}',
                style: TextStyle(
                  fontSize: 30,
                ),
              );
            },
        ),
      ),
    );
  }
}
