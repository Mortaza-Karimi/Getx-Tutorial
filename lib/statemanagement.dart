import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/user.dart';

class StateManageMent extends StatelessWidget {
  StateManageMent({Key? key}) : super(key: key);

  Rx<User> user = User("username", "password").obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("state management"),
        ),
      ),
      body: Obx(() {
        return Center(child: Text("count is : ${user.value.username}"));
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          user.update((val) {
            user.value.username = "ali";
          });
        },
      ),
    );
  }
}
