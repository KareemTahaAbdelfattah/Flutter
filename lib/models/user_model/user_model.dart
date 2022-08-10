import 'package:flutter/material.dart';

class UserModel{
  final int? id;
  final String? name;
  final int? phone;

  UserModel({
    @required this.id,
    @required this.name,
    @required this.phone,
  });
}