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
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'Sign In',
                style:  Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        )
      ],
    );
  }
}
