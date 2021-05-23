import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_flutter/const/color.dart';
import 'package:sample_flutter/widgets/logo.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arguments = Get.arguments;
    final String name = arguments['name'];
    final String email = arguments['email'];

    return Scaffold(
      backgroundColor: AppColors.red,
      body: Container(
        width: Get.width,
        padding: EdgeInsets.only(
          top: Get.mediaQuery.padding.top,
          bottom: Get.mediaQuery.padding.bottom,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: Get.height * 0.1,
              ),
              // column logo
              child: Logo(),
            ),
            Container(
              margin: EdgeInsets.only(
                top: Get.height * 0.1,
              ),
              child: Text(
                "สวัสดีคุณ $name",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.yellow.shade700,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: Get.height * 0.1,
              ),
              child: Text(
                "email: $email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.yellow.shade700,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
