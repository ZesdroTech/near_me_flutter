import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../app_constants/app_padding.dart';

class TopSection {
  //class for building the top area of the signUP screen included the logo of near me,if the bool is signIn is true the appbar shows nearme app name else it will shows the logo
  // ignore: prefer_typing_uninitialized_variables
  var screenWidth;

  // ignore: prefer_typing_uninitialized_variables
  bool isSignUp;

  // ignore: prefer_typing_uninitialized_variables
  var screenHeight;

  TopSection(
      {this.isSignUp = false,
      required this.screenWidth,
      required this.screenHeight});

  Widget topAppBarSignIn() {
    if (!isSignUp) {
      // If isSignIn is true, show a SizedBox
      return Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 120.h,

            ),
          ),
          TopSectionAppBar(120.h).buildTopSection(),
          Positioned.fill(
            top: 20.h,
            child: Padding(
              padding: AppPadding.padding24Horizontal,
              child: Center(
                child: SizedBox(
                  height: 20.h,
                  width: 116.w,
                  child: SvgPicture.asset(
                    'assets/images/near_me_logo.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      // If isSignIn is false, show the Positioned widget
      // it Include the top section with LOGO
      return Stack(
        children: [
          Container(
            height: screenHeight * 0.23.h,
          ),
          Positioned.fill(
            top: 60,
            // left: screenWidth * 0.38.h,
            child: Center(
              child: SizedBox(
                height: 116.h,
                width: 96.h,
                child: SvgPicture.asset("assets/images/near_me_main_logo.svg"),
              ),
            ),
          ),
          TopSectionAppBar(screenHeight * 0.18.h).buildTopSection(),
        ],
      );
    }
  }
}

class TopSectionAppBar {
  double widgetHeight;

  TopSectionAppBar(this.widgetHeight);

  Widget buildTopSection() {
    return SizedBox(
      height: 120.h,
      width: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pattern (3).png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
