import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This class is just like a GetxController,
// It shares the same lifecycle onInit(), onReady(), onClose(),
// It just notifies Getx Dependency injection system,
// that this subclass can not be removed from memory.

class MyController extends GetxService{

  void increamentCounter() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt('counter') ?? 0) +1 ;
    print('Pressed $counter times');
    await preferences.setInt('counter', counter);
  }
}