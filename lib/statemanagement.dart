import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/myController.dart';
import 'package:getxtutorial/user.dart';

class StateManageMent extends StatelessWidget {
  StateManageMent({Key? key}) : super(key: key);

  // Rx<User> user = User("username", "password").obs;

  @override
  Widget build(BuildContext context) {
    // Get.put(MyController(), permanent: true);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("state management"),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: GetBuilder<MyController>(
              id: "first",
              init: MyController(),
              builder: (MyController myController) {
                return Text(
                    "count is : ${Get.find<MyController>().count.value}");
              },
            ),
          ),
          Center(
            child: GetBuilder<MyController>(
              id: "second",
              init: MyController(),
              builder: (MyController myController) {
                return Text(
                    "count is : ${Get.find<MyController>().count.value}");
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // user.update((val) {
          //   user.value.username = "ali";
          // });
          Get.find<MyController>().increment();
        },
      ),
    );
  }
}
