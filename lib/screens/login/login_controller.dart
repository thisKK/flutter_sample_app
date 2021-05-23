import 'package:get/get.dart';
import 'package:sample_flutter/enums/language.dart';
import 'package:sample_flutter/models/user_model.dart';
import 'package:sample_flutter/services/user_service.dart';

class LoginController extends GetxController {
  var languageSelected = Rx<Language>(Language.th);

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> onSubmit() async {
    try {
      UserModel user = await getUser(); // call service
      gotoHome(user);
    } catch (error) {
      print("getUser: $error");
    }
  }

  void gotoHome(UserModel user) {
    Get.toNamed('/home', arguments: {
      "name": user.name,
      "email": user.email,
    });
  }

  Future<UserModel> getUser() async {
    UserModel user = await UserService().getUser();
    return user;
  }

  String getImagePathLanguage(Language language) {
    return language == Language.th
        ? "assets/thai-flag.png"
        : "assets/eng-flag.png";
  }

  setLanguageSelected(Language language) {
    this.languageSelected.value = language;
  }
}
