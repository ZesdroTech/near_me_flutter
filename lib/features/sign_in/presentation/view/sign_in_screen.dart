import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_constants/app_colors.dart';
import '../../../../utils/app_constants/app_padding.dart';
import '../../../../utils/common_widgets/common_button.dart';
import '../../../../utils/common_widgets/divider_area.dart';
import '../widgets/login_main_text.dart';
import '../widgets/login_text_fields.dart';
import '../../../../utils/common_widgets/sign_up_card.dart';
import '../../../../utils/common_widgets/top_section.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // top section including top shade and nearme name logo
          // works according to isSignIn
          TopSection(
                  isSignUp: false,
                  screenHeight: screenHeight,
                  screenWidth: screenWidth)
              .topAppBarSignIn(),

          // main text in the screen
          Padding(
            padding: AppPadding.padding24Horizontal,
            child: LoginMainText(
              text: '''Let's sign you in 👋''',
              subText: '''We've missed you''',
            ),
          ),
          SizedBox(
            height: 48.h,
          ),
          // Textform fields
          LoginTextFields(
            controller: null,
            hintText: 'Your email address ',
          ).buildLoginTextFields(context),
          SizedBox(
            height: 40.h,
          ),
          LoginTextFields(
            controller: null,
            hintText: 'Password',
          ).buildLoginTextFields(context),
          SizedBox(
            height: 32.h,
          ),

          Padding(
            padding: AppPadding.padding24Horizontal,
            child: Text(
              'Forgot Password?',
              style:
                  TextStyle(color: AppColors.blue, fontWeight: FontWeight.w600,fontSize: 16.sp),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: AppPadding.padding24Horizontal,
            child: DefaultButton(text: 'Log in ', onButtonPressed: () {}),
          ),
          SizedBox(
            height: 16.h,
          ),
          DividerArea(width: screenWidth).buildDivider(context),
          SizedBox(
            height: 28.h,
          ),
          //sign up cards for login with several applications
          SignUpCard(
            image: 'assets/images/google_logo.svg',
            onPressed: () {},
            text: 'Login with Google ',
          ),
          SizedBox(
            height: 16.h,
          ),
          SignUpCard(
            image: 'assets/images/facebook_logo.svg',
            onPressed: () {},
            text: 'Login with Facebook ',
          ),

          SizedBox(
            height: 16.h,
          ),
          SignUpCard(
            image: 'assets/images/apple_logo.svg',
            onPressed: () {},
            text: 'Login with Apple ID ',
          )
        ],
      ),
    );
  }
}
