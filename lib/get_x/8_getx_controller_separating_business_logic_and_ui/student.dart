import 'package:get/get.dart';

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