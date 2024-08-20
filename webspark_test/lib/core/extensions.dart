import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  ThemeData get theme => Theme.of(this);

  bool get isKeyboardOpened => MediaQuery.of(this).viewInsets.bottom > 140;

  MediaQueryData get media => MediaQuery.of(this);
  
}
