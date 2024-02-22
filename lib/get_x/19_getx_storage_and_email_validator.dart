import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageAndEmailValidator extends StatelessWidget {
  StorageAndEmailValidator({super.key});

  var storage = GetStorage();
  var emailEditingController = TextEditingController();

  // Storage has many functions like erase, listen, listenkey, remove, etc ..
  // Checkout for use

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailEditingController,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              if (GetUtils.isEmail(emailEditingController.text.toString())) {
                storage.write('email', emailEditingController.text.toString());
              } else {
                Get.snackbar(
                  'Invalid Email',
                  'Enter a Valid Email',
                  backgroundColor: Colors.redAccent,
                  colorText: Colors.white,
                  duration: Duration(seconds: 4),
                );
              }
            },
            child: Text('Write'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              print(storage.read('email'));
            },
            child: Text('Read'),
          ),
        ],
      ),
    );
  }
}
