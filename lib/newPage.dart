import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("new page"),
        ),
      ),
      body: Center(
        child: Text("${Get.parameters}"),
      ),
    );
  }
}
