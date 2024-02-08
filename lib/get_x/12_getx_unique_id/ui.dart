import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'business_logic.dart';

class GetxUniqueID extends StatelessWidget {
  GetxUniqueID({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GetBuilder<MyController>(
              id: 'txtCount',
              builder: (controller) {
                return Text(
                  'The Value is ${myController.count}',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            GetBuilder<MyController>(
              builder: (controller) {
                return Text(
                  'The Value is ${myController.count}',
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
                onPressed: () {
                  myController.increment();
                },
                child: Text('Increment'),
            )
          ],
        ),
      ),
    );
  }
}
