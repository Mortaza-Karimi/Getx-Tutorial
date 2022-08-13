import 'package:get/get.dart';
import 'package:getxtutorial/myController.dart';

class myBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MyController(), permanent: true, tag: "one");
    Get.put(MyController(), permanent: true, tag: "two");
  }
}
