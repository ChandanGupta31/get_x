import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/15_getx_dependency_injection/business_logic.dart';

class GetxDependencyInjection extends StatelessWidget {
  GetxDependencyInjection({super.key});

  // My controller instance will be created even if it is not used
  // tag will be used to find the instance with tag name
  // Controller disposed when it is not in used but if permanent is
  // true the instance will be alive throughout the app

  // MyController myController = Get.put(
  //   MyController(),
  //   tag: 'instance1',
  //   permanent: true,
  // );

  // Instance will be created when it is used
  // it is similar to permanent, the difference is that the instance
  // will be discarded when is not in use
  // but when it's use is needed again, Get will recreate the instance

  // Below are giving error
  // Get.lazyPut(() => MyController());
  // Get.putAsync(() async => await MyController());


  // Here permanent will be true by default and isSingleton is false
  // Get.create<MyController>(() => MyController());

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
                // Instance will be created with tag
                // Get.find<MyController>(tag: 'instance1');

                // Finding Instance
                // Get.find<MyController>();

                Get.find<MyController>().increamentCounter();
              },
              child: Text('Click Here'),
            )
          ],
        ),
      ),
    );
  }
}
