import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_x/get_x/10_getx_simple_state_manager/ui.dart';
import 'package:get_x/get_x/11_getx_controller_lifecycle/ui.dart';
import 'package:get_x/get_x/12_getx_unique_id/ui.dart';
import 'package:get_x/get_x/14_implementing_internationalization/ui.dart';
import 'package:get_x/get_x/16_getx_services/ui.dart';
import 'package:get_x/get_x/18_getx_api_fetching/product_module/views/product_list_view.dart';
import 'package:get_x/get_x/19_getx_storage_and_email_validator.dart';
import 'package:get_x/get_x/1_snack_bar.dart';
import 'package:get_x/get_x/20_getx_getview_and_getwidget/ui.dart';
import 'package:get_x/get_x/2_show_dialog.dart';
import 'package:get_x/get_x/32_getx_internet_connectivity/network/bindings/network_binding.dart';
import 'package:get_x/get_x/32_getx_internet_connectivity/views/home_view.dart';
import 'package:get_x/get_x/35_getx_fingerprint_auth/fingerprint_auth_home.dart';
import 'package:get_x/get_x/3_bottom_sheed_and_dynamic_view.dart';
import 'package:get_x/get_x/4_route_navigation_unnamed.dart';
import 'package:get_x/get_x/5_route_navigation_named.dart';
import 'package:get_x/get_x/6_state_management_reactive_state_manager_using_obx.dart';
import 'package:get_x/get_x/7_state_management_custom_class.dart';
import 'package:get_x/get_x/8_getx_controller_separating_business_logic_and_ui/ui.dart';
import 'package:get_x/get_x/9_getx_controller_type/ui.dart';
import 'get_x/33_getx_image_picker/home.dart';

Future<void> main() async {
  // runApp(GetxInternationalization());

  await GetStorage.init();
  Get.putAsync<Service>( () async => Service());
  
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    defaultTransition: Transition.zoom,
    initialBinding: NetworkBinding(),
    getPages: [
      GetPage(name: '/', page:() => FingerprintAuthHome()),
      GetPage(
        name: '/home',
        page: ()=> SnackBarScreen(),
        transition: Transition.zoom,    // Once we define the transition here it will overwrite the default one
      ),
      GetPage(
        name: '/next/:someValue',      // we can also pass parameter along it after/:
        page: ()=> ShowDialogScreen(),
      ),

      // If we navigate to the route which does not exist then it wil show a page with message unknown route.
    ],
  ));
}
