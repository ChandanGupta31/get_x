import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class MyController extends GetxController{

  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();


    // called every time when the value of count variable changes
    // ever(count, (callback) => print(count));

    // called every time when the value of any variable from the list changes
    // everAll([count], (callback) => print(count));

    // called only once when the variable value changes
    // once(count, (callback) => print(count));

    // called every time the user stop typing for 1 second, this is generally used for search functionality
    // debounce(count, (callback) => print(count), time: Duration(seconds: 1));

    // Ignore all the changes within 3 second.
    // imagine the user can earn coins by clicking on something
    // If he click 300 time in the same minute,
    // he would have 300 coins, using interval,
    // you can set a time frame for 3 second,
    // and even then clicking 300 or a thousand times,
    // the maximum he would get in 1 minute would be 20 coins,
    interval(count, (callback) => print(count), time: Duration(seconds: 3));

  }
}