import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './business_logic.dart';


class GetxServices extends StatelessWidget {
  GetxServices({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                myController.increamentCounter();
              },
              child: Text('Click Here'),
            )
          ],
        ),
      ),
    );
  }
}
