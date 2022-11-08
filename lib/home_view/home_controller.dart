import 'package:techie/exports.dart';

class HomeController extends GetxController {
  var count = 0;
  void init() {}
  void increment() {
    count++;
    update();
  }
}
