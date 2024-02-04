import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateManagementUsingOBSScreen extends StatelessWidget {
  ReactiveStateManagementUsingOBSScreen({super.key});

  /*
  * If we want that every time the value of variable changes then all the widget which
  * uses the variable must update itself, then the variable must be reactive or observable
  * and to make it Reactive(Rx) .obs is used with variable value.
  *
  * To update the widget which uses Rx variable must be placed inside
  * Obx(()=> Widget which uses Rx)
  * The widget will only update if and only if the Rx variable value changes
  *
  *
  * Other way of making the variable Rx
  * 1. Using Rx(Type).
  * =========================================================================================
  * Initial value is recommended, but not mandatory
  * final name = RxString('')
  * final age = RxInt(0)
  *
  * 2. Using Rx<Type>
  * ==========================================================================================
  * final name = Rx<String>('')
  * final age = Rx<Int>(0)
  *
  * */

  var counter = 0.obs;

  void increment() {
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Center(
            child: Text(
                  counter.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.blueAccent,
                  ),
                ),
          ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              child: Text(
                'Increase'
              ),
              onPressed: increment,
            ),
          ),
        ],
      ),
    );
  }
}
