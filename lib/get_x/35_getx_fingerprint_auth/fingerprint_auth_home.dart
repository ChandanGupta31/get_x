import 'package:flutter/material.dart%20';
import 'package:get/get.dart';
import 'package:get_x/get_x/35_getx_fingerprint_auth/fingerprint_auth_controller.dart';

class FingerprintAuthHome extends StatelessWidget {
  FingerprintAuthHome({super.key});

  FingerprintAuthController _authController =
      Get.put(FingerprintAuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.grey,
            child: Text(
              'BioMetric',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Obx(
                  () => _authController.hasFingerPrint.value
                      ? Icon(
                          Icons.check,
                          color: Colors.green,
                        )
                      : Icon(
                          Icons.clear,
                          color: Colors.redAccent,
                        ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Fingerprint Authentication',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Obx(
                  () => _authController.hasFaceLock.value
                      ? Icon(
                          Icons.check,
                          color: Colors.green,
                        )
                      : Icon(
                          Icons.clear,
                          color: Colors.redAccent,
                        ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Face Lock Authentication',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: _authController.authenticateUser,
              child: Text('Authenticate'),
          )
        ],
      ),
    );
  }
}
