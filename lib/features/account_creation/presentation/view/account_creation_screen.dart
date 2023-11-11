import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/features/account_creation/presentation/widgets/ac_creation_text_fields.dart';
import 'package:near_me_main_project/features/sign_in/presentation/widgets/login_main_text.dart';
import 'package:near_me_main_project/utils/app_constants/app_padding.dart';
import 'package:near_me_main_project/utils/common_widgets/common_button.dart';
import 'package:near_me_main_project/utils/common_widgets/top_section.dart';

class AccountCreationScreen extends StatelessWidget {
  const AccountCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopSection(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  isSignUp: false)
              .topAppBarSignIn(),
          Padding(
            padding: AppPadding.padding24Horizontal,
            child: LoginMainText(
                text: 'Your Deals, Your Way!👋',
                subText: 'Uncover local deals around you'),
          ),
          SizedBox(height: 40.h,),
          AccountCreationTextField(
                  title: 'Your email address', hint: 'exaple@gmail.com')
              .buildTextField(context),
          SizedBox(height: 24.h,),
          AccountCreationTextField(title: 'Your name', hint: 'Job kurian')
              .buildTextField(context),
          SizedBox(height: 24.h,),
          AccountCreationTextField(
                  title: 'Your contact number',
                  hint: '9999999999',
                  isPhone: true)
              .buildTextField(context),
          SizedBox(height: 24.h,),
          AccountCreationTextField(title: 'Password', hint: '*******')
              .buildTextField(context),
          SizedBox(height: 24.h,),
          AccountCreationTextField(
                  title: 'Confirm password', hint: '********')
              .buildTextField(context),
          SizedBox(height: 40.h,),
          Padding(
            padding: AppPadding.padding24Horizontal,
            child: DefaultButton(text: 'Create Account', onButtonPressed: (){}),
          )
        ],
      ),
    );
  }
}
