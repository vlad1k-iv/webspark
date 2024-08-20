import 'package:flutter/material.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';
import 'package:webspark_test/presentation/resources/text_styles.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.onTap,
    required this.text,
    super.key,
  });
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: ColorsManager.main,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: ColorsManager.darkMain,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyles.bodySmall,
      ),
    );
  }
}
