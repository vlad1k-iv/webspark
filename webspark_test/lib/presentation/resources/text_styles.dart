import 'package:flutter/material.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';

class TextStyles {
  static TextStyle titleSmall = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: ColorsManager.black,
  );

  static TextStyle titleMedium = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: ColorsManager.black,
  );

  static TextStyle titleLarge = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: ColorsManager.black,
  );

  static TextStyle bodyMedium = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: ColorsManager.black,
  );

  static TextStyle bodySmall = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorsManager.black,
  );

  static TextStyle displaySmall = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ColorsManager.black,
  );

  static TextStyle displayLarge = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorsManager.black,
  );
}
