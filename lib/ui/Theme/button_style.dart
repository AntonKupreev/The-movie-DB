// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Colors.blue),
    textStyle: MaterialStateProperty.all(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
  );
}
