import 'package:flutter/material.dart';
import 'package:webspark_test/presentation/resources/colors_manager.dart';
import 'package:webspark_test/presentation/resources/text_styles.dart';

class BaseTextField extends StatelessWidget {
  const BaseTextField({
    this.controller,
    this.onChange,
    this.isError = false,
    this.error,
    this.hintText,
    this.label,
    this.obscureText = false,
    super.key,
  });
  final TextEditingController? controller;
  final void Function(String value)? onChange;
  final bool isError;
  final String? error;
  final String? label;
  final String? hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: obscureText,
            controller: controller,
            onChanged: onChange,
            cursorColor: ColorsManager.main,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: label,
              hintText: hintText,
              labelStyle: TextStyle(
                color: isError ? ColorsManager.red : null,
                fontFamily: 'Roboto',
                fontSize: 12,
              ),
              hintStyle: TextStyles.bodyMedium.apply(
                color: ColorsManager.black,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: isError ? ColorsManager.red : ColorsManager.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: isError ? ColorsManager.red : ColorsManager.gray,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: isError ? ColorsManager.red : ColorsManager.gray,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: isError ? ColorsManager.red : ColorsManager.gray,
                ),
              ),
            ),
          ),
          if (isError) ...[
            const SizedBox(
              height: 4,
            ),
            Text(
              error ?? '',
              style: const TextStyle(
                color: ColorsManager.red,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
