import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_constants/app_padding.dart';

class ProfileTopSection {
  //class for building the top area of the signUP screen included the logo of near me,if the bool is signIn is true the appbar shows nearme app name else it will shows the logo
  // ignore: prefer_typing_uninitialized_variables
  var screenWidth;

  // ignore: prefer_typing_uninitialized_variables

  // ignore: prefer_typing_uninitialized_variables
  var screenHeight;

  ProfileTopSection({
    this.screenWidth,
    this.screenHeight,
  });

  Widget ProfileTop(BuildContext context) {
    return Stack(
      children: [
        TopSectionAppBar(screenHeight * 0.15.h).buildTopSection(),
        Positioned(
          top: 80.h,
          child: Padding(
            padding: AppPadding.padding24Horizontal,
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 20.sp,
                ),
                SizedBox(
                  width: 102.w,
                ),
                SizedBox(
                    child: Text(
                  'My Profile',
                style:  Theme.of(context).textTheme.headlineSmall,
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TopSectionAppBar {
  double widgetHeight;

  TopSectionAppBar(this.widgetHeight);

  Widget buildTopSection() {
    return Container(
      width: double.infinity,
      height: 132.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pattern (3).png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
