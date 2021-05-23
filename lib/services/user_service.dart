import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sample_flutter/models/user_model.dart';

class UserService {
  Future<UserModel> getUser() async {
    http.Response response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users/2"));
    return UserModel.fromJson(jsonDecode(response.body));
  }
}
