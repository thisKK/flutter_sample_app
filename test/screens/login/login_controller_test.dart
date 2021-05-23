import 'package:flutter_test/flutter_test.dart';
import 'package:sample_flutter/enums/language.dart';
import 'package:sample_flutter/screens/login/login_controller.dart';

main() {
  group("getImagePathLanguage", () {
    var controller = LoginController();
    test("should retrun flag th", () {
      var actual = controller.getImagePathLanguage(Language.th);
      expect(actual, "assets/thai-flag.png");
    });

    test("should retrun flag en", () {
      var actual = controller.getImagePathLanguage(Language.en);
      expect(actual, "assets/eng-flag.png");
    });
  });

  group("setLanguageSelected", () {
    var controller = LoginController();
    test("should language selected as th", () {
      controller.setLanguageSelected(Language.th);
      expect(controller.languageSelected.value, Language.th);
    });
    test("should language selected as en", () {
      controller.setLanguageSelected(Language.en);
      expect(controller.languageSelected.value, Language.en);
    });
  });
}
