import 'package:flutter/material.dart%20';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:local_auth/local_auth.dart';

class FingerprintAuthController extends GetxController {
  var _localAuth = LocalAuthentication();
  var hasFingerPrint = false.obs;
  var hasFaceLock = false.obs;
  var isUserAuthenticated = false.obs;

  void _getAllBiometric() async {
    bool hasLocalAuthentication = await _localAuth.canCheckBiometrics;
    if (hasLocalAuthentication) {
      List<BiometricType> availableBiometric =
          await _localAuth.getAvailableBiometrics();
      hasFaceLock.value = availableBiometric.contains(BiometricType.face);
      hasFingerPrint.value =
          availableBiometric.contains(BiometricType.fingerprint);
    } else {
      Get.snackbar(
        'Error',
        'Local Authentication no Available',
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _getAllBiometric();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void authenticateUser() async {
    try {
      isUserAuthenticated.value = await _localAuth.authenticate(
        localizedReason: 'Authenticate Yoursef',
        authMessages: Iterable.generate(3),
        options: AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: true,
          sensitiveTransaction: true,
        ),
      );

      if (isUserAuthenticated.value) {
        Get.snackbar(
          'Success',
          'You are Authenticated',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        );
      }
      else{
        Get.snackbar(
          'Error',
          'Authentication Failed',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
        );
      }
    } catch (ex) {
      Get.snackbar(
        'Error',
        ex.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
      );
    }
  }
}
