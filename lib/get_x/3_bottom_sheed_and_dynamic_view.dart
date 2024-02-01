import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetAndDynamicViewScreen extends StatelessWidget {
  const BottomSheetAndDynamicViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show BottomSheet'),
          onPressed: () {
            Get.bottomSheet(
              Container(
                child: Wrap(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.wb_sunny_outlined),
                      title: Text('Light Theme'),
                      onTap: () => {
                        Get.changeTheme(ThemeData.light()), // TO change the theme mode
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Dark Theme'),
                      onTap: () => {
                        Get.changeTheme(ThemeData.dark()),  // To change the theme mode
                      },
                    ),
                  ],
                ),
              ),
              barrierColor: Colors.green,
              backgroundColor: Colors.red,
              isDismissible: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 2
                )
              ),
              enableDrag: false,
            );
          },
        ),
      ),
    );
  }
}
