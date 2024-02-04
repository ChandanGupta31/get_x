import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/8_getx_controller_separating_business_logic_and_ui/business_logic.dart';

class GetXcontrollerSeparatingBusinessLogicAndUI extends StatelessWidget {
  GetXcontrollerSeparatingBusinessLogicAndUI({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
                  () => Text(
                // 'Name is ${student.name.value}',  // if variable is observable then use this syntax
                'Name is ${myController.student.value.name}',  // If class is observable use this syntax
                style: TextStyle(
                    fontSize: 30
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              child: Text('Upper'),
              onPressed: (){
                myController.convertUpperCase();  // For individual variable as well as for class
              },
            )
          ],
        ),
      ),
    );
  }
}
