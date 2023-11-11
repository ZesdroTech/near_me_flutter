import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:near_me_main_project/utils/theme/themes.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.text,
    required this.onButtonPressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback onButtonPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onButtonPressed,
        child: Text(
          text,
        ),
      ),
    );
  }
}
