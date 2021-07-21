import 'package:flutter/material.dart';

class User{
  String _userName;
  String _email;
  String _password;

  User(this._userName,this._email,this._password);

  String get id =>_userName;
  String get email =>_email;
  String get password =>_password;

}