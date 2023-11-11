import 'package:flutter/material.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

class SignUpSpanText {
  Widget buildSpanText(BuildContext context) {
    return Wrap(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account ?',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue),
              ),
            ],
          ),
        )
      ],
    );
  }
}
