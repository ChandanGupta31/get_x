import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class MyController extends GetxController{

  var count = 0;

  void increment() {
    // await Future<int>.delayed(Duration(seconds: 5));
    this.count++;
    update();
  }

  void close(){
    if(kDebugMode){
      print('Controller Dispose');
    }
  }

  // Better method
  @override
  void onInit() {
    // TODO: implement onInit
    MyController().increment();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    MyController().close();
    super.onClose();
  }
}