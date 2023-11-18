import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:near_me_main_project/features/sign_up/presentation/widgets/guest_user_button_signup.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';
import 'package:near_me_main_project/utils/app_constants/app_sized_box.dart';

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
          TopSection(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  isSignUp: true)
              .topAppBarSignIn(),
          AppSizedBox().sized16v,

          SignupMainText(
            screenWidth: screenWidth,
          ),
          AppSizedBox().sized8v,
          Center(
              child: Text(
            'Discover exclusive local deals,explore \nnearby offers, and start saving today with us.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          AppSizedBox().sized24v,
          // signUP cards for login with multiple options like google ,facebook , apple id
          SignUpCard(
            image: 'assets/images/google_logo.svg',
            onPressed: () {},
            text: 'Sign up with Google',
          ),
          AppSizedBox().sized8v,
          SignUpCard(
            image: 'assets/images/facebook_logo.svg',
            onPressed: () {},
            text: 'Sign up with Facebook',
          ),
          AppSizedBox().sized8v,

          SignUpCard(
            image: 'assets/images/apple_logo.svg',
            onPressed: () {},
            text: 'Sign up with Apple ID',
          ),

          AppSizedBox().sized16v,
          DividerArea(width: screenWidth).buildDivider(context),
          AppSizedBox().sized16v,

          Padding(
            padding: AppPadding.padding24Horizontal,
            child: DefaultButton(
                text: 'Login with Email Address', onButtonPressed: () {}),
          ),
          AppSizedBox().sized8v,
          GuestLoginButtonSignUp().buildGuestLoginButton(context),
          AppSizedBox().sized30v,
          Center(child: SignUpSpanText().buildSpanText(context)),
        ],
      ),
    );
  }
}
