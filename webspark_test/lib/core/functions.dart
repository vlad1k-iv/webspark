import 'package:flutter/material.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';
import 'package:webspark_test/presentation/resources/text_styles.dart';

void unFocus(BuildContext context) {
  if (FocusScope.of(context).hasFocus) {
    FocusScope.of(context).unfocus();
  }
}

void showScaffoldSnackBar({
  required BuildContext context,
  required String error,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            error,
            style: TextStyles.bodySmall.apply(
              color: ColorsManager.white,
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {
              ScaffoldMessenger.of(context).clearSnackBars();
            },
            child: const Icon(
              Icons.close,
              color: ColorsManager.black,
            ),
          ),
        ],
      ),
    ),
  );
}
