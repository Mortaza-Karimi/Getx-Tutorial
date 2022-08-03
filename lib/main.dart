import 'package:flutter/material.dart';
import 'package:getxtutorial/homePage.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/newPage.dart';
import 'package:getxtutorial/unknownRoute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/homePage", page: () => const HomePage()),
        GetPage(name: "/newPage", page: () => const NewPage()),
      ],
      initialRoute: "/homePage",
      defaultTransition: Transition.fade,
      unknownRoute:
          GetPage(name: "/unknownRoute", page: () => const UnKnownRoute()),
      debugShowCheckedModeBanner: false,
      home: const Directionality(
        child: HomePage(),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
