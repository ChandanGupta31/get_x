import 'package:get/get.dart';
import 'package:get_x/get_x/8_getx_controller_separating_business_logic_and_ui/student.dart';

class MyController extends GetxController{

  // if variables are made reactive
  // var student = Student();
  // void convertToUpperCase(){
  //   student.name.value = student.name.value.toUpperCase();
  // }

  // if class are made reactive
  var student = Student("chandan", 21).obs;
  void convertUpperCase(){
    student.update((val) {
      student.value.name = student.value.name.toString().toUpperCase();
    });
  }
}