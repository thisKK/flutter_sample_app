import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/screens/home.dart';
import 'package:sample_flutter/screens/login/login.dart';
import 'package:sample_flutter/screens/login/login_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.prompt().fontFamily,
      ),
      initialRoute: '/login',
      getPages: [
        GetPage(
            name: "/login",
            page: () => LoginScreen(),
            binding: BindingsBuilder(() {
              Get.put(LoginController());
            })),
        GetPage(
          name: "/home",
          page: () => HomeScreen(),
        )
      ],
    );
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {}
}
