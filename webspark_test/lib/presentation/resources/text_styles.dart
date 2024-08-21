import 'package:flutter/material.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';

class TextStyles {
  static const TextStyle titleSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: ColorsManager.black,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: ColorsManager.black,
  );

  static const TextStyle titleLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: ColorsManager.black,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: ColorsManager.darkGrey,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorsManager.black,
  );

  static const TextStyle displaySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ColorsManager.black,
  );

  static const TextStyle displayLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorsManager.black,
  );
}
