// class Token {
//   String? token;

//   Token({this.token});

//   factory Token.fromJson(Map<String, dynamic> json){
//     return Token(token: json['token']);
//   }
// }


import 'package:flutter/material.dart';


class UserProvider with ChangeNotifier {
  String? _accessToken;

  bool get isLoggedIn => _accessToken != null;

  String? get accessToken => _accessToken;

  void login(String token) {
    _accessToken = token;
    notifyListeners();
  }

  void logout() {
    _accessToken = null;
    notifyListeners();
  }
}