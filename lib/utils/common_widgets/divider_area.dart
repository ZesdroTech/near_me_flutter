import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerArea {
  DividerArea({this.width});

  // ignore: prefer_typing_uninitialized_variables
  var width;

  Widget buildDivider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            thickness: 1,
            color: Theme.of(context).hintColor,
          )),
          SizedBox(
            width: 8.w,
          ),
          Text(
            'or',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            width: 8.w,
          ),
          Expanded(
              child: Divider(
            thickness: 1,
            color: Theme.of(context).hintColor,
          ))
        ],
      ),
    );
  }
}
