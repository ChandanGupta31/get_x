import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/10_getx_simple_state_manager/business_logic.dart';


class GetxSimpleStateManager extends StatelessWidget {
  GetxSimpleStateManager({super.key});

  // if init property is not used int he GetX<Type of Controller> then
  // create the instance of controller as follow
  // MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
                init: MyController(),
                builder: (controller) {
                  return Text(
                    'The Value is ${controller.count}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  );
                },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('Increase'),
              onPressed: (){
                // if the controller is initialize at the top then use this method
                // myController.increment();


                // if the controller is initialize in the body for a widget then use this method
                Get.find<MyController>().increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
