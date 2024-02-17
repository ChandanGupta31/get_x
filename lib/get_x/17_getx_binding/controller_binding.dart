import 'package:get/get.dart';
import 'package:get_x/get_x/17_getx_binding/home_controller.dart';
import 'package:get_x/get_x/17_getx_binding/my_controller.dart';

class AllControllerBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());
  }

}