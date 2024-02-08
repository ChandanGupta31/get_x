import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class MyController extends GetxController{

  var count = 0;

  void increment() {
    this.count++;
    update(['txtCount']);
  }
}