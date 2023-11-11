import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteLogoutCard extends StatelessWidget {
  String text;
  bool isDelete = false;

  DeleteLogoutCard({super.key, required this.text, this.isDelete = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          height: 52.h,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              color: isDelete ? Colors.white : Colors.red,
              borderRadius: BorderRadius.circular(
                8.r,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 28.sp,
                      color: isDelete ? Colors.red : Colors.white,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: isDelete ? Colors.red : Colors.white),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 24.sp,
                color: isDelete ? Colors.black : Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        )
      ],
    );
  }
}
