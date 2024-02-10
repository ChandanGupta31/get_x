import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/14_implementing_internationalization/business_logic.dart';
import 'package:get_x/get_x/14_implementing_internationalization/messages.dart';

// For this directly launch the page
class GetxInternationalization extends StatelessWidget {
  const GetxInternationalization({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale(
        'en_US',
      ), // Setting the default language, we can also took the device locale using Get.deviceLocale
      fallbackLocale:
          Locale('en_US'), // Fallback local if wrong locale is taken
      title: 'Internationalization',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  MyController().changeLanguage('en', 'US');
                },
                child: Text('English'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  MyController().changeLanguage('hi', 'IN');
                },
                child: Text('Hindi'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  MyController().changeLanguage('fr', 'FR');
                },
                child: Text('French'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
