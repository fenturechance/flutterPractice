import 'dart:core';
import 'package:flutter/material.dart';

class MyClass {
  func1() {
    print('abc');
    _func1();
    func3();
  }
  _func1() {
    print('def');
  }
  static func3() {
    return Color(0xffaa00);
  }
}