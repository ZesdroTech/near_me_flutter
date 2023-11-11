import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

import '../../../../utils/app_constants/app_padding.dart';

class AccountCreationTextField {
  String title;
  String hint;
  bool isPhone;

  AccountCreationTextField({
    required this.title,
    required this.hint,
    this.isPhone = false,
  });

  Widget buildTextField(BuildContext context) {
    return Padding(
      padding: AppPadding.padding24Horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            children: [
              isPhone
                  ? SizedBox(
                      height: 24,
                      width: 24,
                      child: SvgPicture.asset(
                        'assets/images/indian_flag.svg',
                        fit: BoxFit.cover,
                      ),
                    )
                  : const SizedBox(),
              SizedBox(
                width: 5.w,
              ),
              isPhone
                  ? Text(
                      '+91',
                      style: Theme.of(context).textTheme.titleLarge,
                    )
                  : const SizedBox(),
              isPhone
                  ? const Icon(Icons.keyboard_arrow_down_rounded)
                  : const SizedBox(),
              Expanded(
                child: SizedBox(
                  height: 40.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hint,
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                  ),
                ),
              ),
              isPhone
                  ? Text(
                      'Verified',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  : const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 24,
                    )
            ],
          ),
          Divider(
            thickness: 1,
            color: Theme.of(context).dividerColor,
            height: 0,
          ),
          SizedBox(
            height: 14.h,
          )
        ],
      ),
    );
  }
}
