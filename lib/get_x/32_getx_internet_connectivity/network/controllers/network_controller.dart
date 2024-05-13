import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NetworkController extends GetxController {
  var connectionStatus = 0.obs;
  final _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(updateConnectionStatus);
  }

  Future<void> initConnectivity() async {
    List<ConnectivityResult> result = [ConnectivityResult.none];

    try {
      result = await _connectivity.checkConnectivity();
      print('chandan');
      print(result);
    } on PlatformException catch (ex) {
      if (kDebugMode) {
        print(ex.message.toString());
      }
    }

    return updateConnectionStatus(result);
  }

  void updateConnectionStatus(List<ConnectivityResult> result) {
    switch (result[0]) {
      case ConnectivityResult.wifi:
        connectionStatus.value = 1;
        break;
      case ConnectivityResult.mobile:
        connectionStatus.value = 2;
        break;
      case ConnectivityResult.none:
        connectionStatus.value = 0;
        break;
      default:
        Get.snackbar('Network Error', 'Failed to Connect');
        break;
    }
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _connectivitySubscription.cancel();
  }
}
