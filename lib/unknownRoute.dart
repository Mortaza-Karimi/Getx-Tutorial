import 'package:flutter/material.dart';

class UnKnownRoute extends StatelessWidget {
  const UnKnownRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Error")),
        backgroundColor: Colors.red,
      ),
    );
  }
}
