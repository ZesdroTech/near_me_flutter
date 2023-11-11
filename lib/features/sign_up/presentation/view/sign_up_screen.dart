import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

import '../../../../utils/app_constants/app_padding.dart';
import '../../../../utils/common_widgets/common_button.dart';
import '../../../../utils/common_widgets/sign_up_card.dart';
import '../../../../utils/common_widgets/top_section.dart';
import '../../../../utils/common_widgets/divider_area.dart';
import '../widgets/main_text.dart';
import '../widgets/sign_up_span_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          TopSectionAppBar(screenHeight * 0.15.h).buildTopSection(),
          // SizedBox(
          //   height: 32.h,
          // ),
          SizedBox(
            height: 116.h,
            width: 96.w,
            child: SvgPicture.asset(
              'assets/images/near_me_main_logo.svg',
              fit: BoxFit.fitHeight,
            ),
          ),
          SignupMainText(
            screenWidth: screenWidth,
          ),
          SizedBox(
            height: 8.h,
          ),
          Center(
              child: Text(
            'Discover exclusive local deals,\nexplore nearby offers, and start saving\ntoday with us.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          )),
          SizedBox(
            height: 16.h,
          ),
          // signUP cards for login with multiple options like google ,facebook , apple id
          SignUpCard(
            image: 'assets/images/google_logo.svg',
            onPressed: () {},
            text: 'Sign up with Google',
          ),
          SizedBox(
            height: 16.h,
          ),
          SignUpCard(
            image: 'assets/images/facebook_logo.svg',
            onPressed: () {},
            text: 'Sign up with Facebook',
          ),
          SizedBox(
            height: 16.h,
          ),

          SignUpCard(
            image: 'assets/images/apple_logo.svg',
            onPressed: () {},
            text: 'Sign up with Apple ID',
          ),

          SizedBox(
            height: 16.h,
          ),
          DividerArea(width: screenWidth).buildDivider(context),
          SizedBox(
            height: 16.h,
          ),

          Padding(
            padding: AppPadding.padding24Horizontal,
            child: DefaultButton(
                text: 'Create an Account', onButtonPressed: () {}),
          ),
          SizedBox(
            height: 16.h,
          ),
          Center(child: SignUpSpanText().buildSpanText(context)),
        ],
      ),
    );
  }
}
