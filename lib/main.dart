import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/1_snack_bar.dart';
import 'package:get_x/get_x/2_show_dialog.dart';
import 'package:get_x/get_x/3_bottom_sheed_and_dynamic_view.dart';
import 'package:get_x/get_x/4_route_navigation_unnamed.dart';
import 'package:get_x/get_x/5_route_navigation_named.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    defaultTransition: Transition.zoom,
    getPages: [
      GetPage(name: '/', page:() => NamedRouteNavigationScreen()),
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
