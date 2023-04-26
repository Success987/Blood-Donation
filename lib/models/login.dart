// To parse this JSON data, do
//
//     final signin = signinFromJson(jsonString);

import 'dart:convert';

Signin signinFromJson(String str) => Signin.fromJson(json.decode(str));

String signinToJson(Signin data) => json.encode(data.toJson());

class Signin {
  Signin({
    required this.status,
    required this.message,
    required this.userId,
  });

  bool status;
  String message;
  UserId userId;

  factory Signin.fromJson(Map<String, dynamic> json) => Signin(
        status: json["status"],
        message: json["message"],
        userId: UserId.fromJson(json["userID"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "userID": userId.toJson(),
      };
}

class UserId {
  UserId({
    required this.id,
    required this.name,
    required this.gender,
    required this.phone,
    required this.address,
    required this.bloodType,
    required this.email,
    this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  int gender;
  String phone;
  String address;
  String bloodType;
  String email;
  dynamic emailVerifiedAt;
  DateTime createdAt;
  DateTime updatedAt;

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
        id: json["id"],
        name: json["name"],
        gender: json["gender"],
        phone: json["phone"],
        address: json["address"],
        bloodType: json["blood_type"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "gender": gender,
        "phone": phone,
        "address": address,
        "blood_type": bloodType,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
