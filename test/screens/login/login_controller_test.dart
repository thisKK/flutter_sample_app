import 'package:flutter_test/flutter_test.dart';
import 'package:sample_flutter/enums/language.dart';
import 'package:sample_flutter/screens/login/login_controller.dart';

main() {
  test("should retrun flag th", () {
    var controller = LoginController();
    var actual = controller.getImagePathLanguage(Language.th);
    expect(actual, "assets/thai-flag.png");
  });

  test("should retrun flag en", () {
    var controller = LoginController();
    var actual = controller.getImagePathLanguage(Language.en);
    expect(actual, "assets/eng-flag.png");
  });
}
