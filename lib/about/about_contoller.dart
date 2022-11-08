import 'package:techie/exports.dart';

class AboutController extends GetxController {
  var count = 0;
  void init() {}
  void increment() {
    count++;
    update();
  }
}
