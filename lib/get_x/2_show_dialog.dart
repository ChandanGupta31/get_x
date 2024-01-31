import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ShowDialogScreen extends StatelessWidget {
  const ShowDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dialog'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Show Dialog'),
            onPressed: () {
              // Get.defaultDialog();  // prototype
              Get.defaultDialog(
                title: 'Chandan Gupta',
                titleStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                middleText: 'This is middle text',
                middleTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                backgroundColor: Colors.blueAccent,
                radius: 200,

                // To customise middle text and after using this middle text will be overwrited
                content: Row(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text('Loading Data'),
                    ),
                    CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  ],
                ),
                // Buttons
                textCancel: 'Cancel',
                cancelTextColor: Colors.red,
                textConfirm: 'Confirm',
                confirmTextColor: Colors.green,
                textCustom: 'Custom',
                onCustom: (){},   // custom button property
                onCancel: (){
                  Get.back();   // Simply close the dialog
                },   // cancel button property
                onConfirm: (){},  // confirm button property
                buttonColor: Colors.black,
                // cancel: Text(''),        // Whenever we use these properties it will overwrite the above button
                // confirm: Text(''),      // Whenever we use these properties it will overwrite the above button
                // custom: Text(''),      // Whenever we use these properties it will overwrite the above button
                // actions: [
                //   // For adding buttons
                // ],
                // barrierDismissible: false,  // if it is true then if we click outside the dialog it will close the dialog
              );
            },
          ),
        ),
      ),
    );
  }
}
