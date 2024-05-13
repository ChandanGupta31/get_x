import 'package:get/get.dart';
import 'package:get_x/get_x/32_getx_internet_connectivity/network/controllers/network_controller.dart';

class NetworkBinding extends Bindings{


  @override
  void dependencies() {
    Get.lazyPut(() => NetworkController());
  }

}