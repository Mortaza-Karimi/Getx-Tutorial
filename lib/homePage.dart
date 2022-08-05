import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtutorial/newPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("آموزش Getx"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("show Dialog"),
              onPressed: () {
                Get.defaultDialog(
                  title: "Error",
                  titleStyle: TextStyle(color: Colors.red),
                  titlePadding: EdgeInsets.all(20),
                  middleText:
                      "this is error\nthis is error\nthis is error\nthis is error\nthis is error",
                  // middleTextStyle: TextStyle(color: Colors.blue));
                  // backgroundColor: Colors.red[200],
                  // content: Container(
                  //   width: 50,
                  //   height: 50,
                  //   color: Colors.red,
                  // ),
                  radius: 25,
                  // barrierDismissible: false,
                  // onWillPop: () async {
                  //   return false;
                  // },
                  // textCancel: "Cancel",
                  // textConfirm: "Confirm",
                  cancel: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("Cancel"),
                  ),
                  confirm:
                      ElevatedButton(onPressed: () {}, child: Text("Confirm")),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar("", "",
                    titleText: const Text(
                      "ارور",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    // messageText: const SizedBox(
                    //   height: 1,
                    // ),
                    messageText: const Text(
                      "برنامه متوقف شد",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    backgroundColor: Colors.red,
                    duration: const Duration(seconds: 5),
                    icon: const Icon(
                      Icons.error,
                      color: Colors.white,
                    ),
                    shouldIconPulse: false,
                    dismissDirection: DismissDirection.horizontal,
                    // snackPosition: SnackPosition.BOTTOM,
                    overlayBlur: 5,
                    // isDismissible: false,
                    // animationDuration: const Duration(seconds: 1),
                    // borderColor: Colors.black,
                    // borderWidth: 3,
                    borderRadius: 0,
                    // forwardAnimationCurve: Curves.ease,
                    // reverseAnimationCurve: Curves.decelerate,
                    // showProgressIndicator: true,
                    // progressIndicatorBackgroundColor: Colors.black,
                    margin: EdgeInsets.all(8), onTap: (_) {
                  print("object");
                },
                    mainButton: TextButton(
                      onPressed: () {
                        print("main button clicked!");
                      },
                      child: Text("main Button"),
                    ),
                    // userInputForm: Form(
                    //   child: TextField(),
                    // ),
                    leftBarIndicatorColor: Colors.cyan,
                    boxShadows: [
                      BoxShadow(
                        color: Colors.grey,
                      )
                    ]);
              },
              child: const Text("show snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Wrap(
                    children: [
                      ListTile(
                        title: const Text("list tile"),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text("list tile"),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text("list tile"),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text("list tile"),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text("list tile"),
                        onTap: () {},
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                  ),
                  barrierColor: Colors.black.withOpacity(0.3),
                  // elevation:
                  enableDrag: false,
                  isDismissible: false,
                );
              },
              child: const Text("show bottom sheet"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(const NewPage(),
                //     fullscreenDialog: true,
                //     transition: Transition.zoom,
                //     curve: Curves.easeInOut,
                //     // duration: Duration(milliseconds: 2000),
                //     arguments: {'key': 'value'});
                Get.toNamed("/statemanagement");
              },
              child: const Text("Go to statemanagement page"),
            ),
          ],
        ),
      ),
    );
  }
}
