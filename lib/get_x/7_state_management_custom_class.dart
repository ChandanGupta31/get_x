import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagementCustomCLassScreen extends StatelessWidget {
  StateManagementCustomCLassScreen({super.key});

  final student = Student("chandan", 21).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                // 'Name is ${student.name.value}',  // if variable is observable then use this syntax
                'Name is ${student.value.name}',  // If class is observable use this syntax
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              child: Text('Upper'),
              onPressed: (){
                // if individual variables are observable use this syntax
                // student.name.value = student.name.value.toUpperCase();

                // if the class is observable use this syntax
                student.update((val) {
                  val!.name = val.name.toString().toUpperCase();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class Student {
  // Classes can be made observable by making individuals variables Rx
  // or by making the entire class observable

  // Individual variable Rx
  // var name = 'chandan'.obs;
  // var age = 21.obs;


  // To make the class observable
  var name;
  var age;
  Student(this.name, this.age);
}
