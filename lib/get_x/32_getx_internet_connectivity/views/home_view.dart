import 'package:flutter/material.dart%20';
import 'package:get/get.dart';
import 'package:get_x/get_x/32_getx_internet_connectivity/network/controllers/network_controller.dart';

class NetworkHome extends StatelessWidget {
  NetworkHome({super.key});

  NetworkController _networkController = Get.find<NetworkController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(
            _networkController.connectionStatus.value == 1
                ? 'Connected to Wi-Fi'
                : _networkController.connectionStatus.value == 2
                    ? 'Connected to Mobile Data'
                    : 'Internet Not available',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
