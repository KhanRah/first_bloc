import 'dart:convert';

LoginModal loginModalFromJson(String str) => LoginModal.fromJson(json.decode(str));

String loginModalToJson(LoginModal data) => json.encode(data.toJson());

class LoginModal {
  String username;
  String password;

  LoginModal({
    this.username,
    this.password,
  });

  factory LoginModal.fromJson(Map<String, dynamic> json) => LoginModal(
    username: json["username"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
  };
}