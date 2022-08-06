import 'package:get/get.dart';

class MyController extends GetxController {
  RxInt count = 0.obs;

  @override
  onInit() {
    // ever(count, ((callback) {
    //   print(count.value);
    // }));
    // everAll([count], (callback) {
    //   print(count.value);
    // });
    // once(count, (callback) {
    //   print(count.value);
    // });
    // debounce(
    //   count,
    //   (callback) {
    //     print(count.value);
    //   },
    //   time: Duration(milliseconds: 2000),
    // );
    super.onInit();
  }

  increment() {
    count.value++;
    update(['second']);
  }
}
