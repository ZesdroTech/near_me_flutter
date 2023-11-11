import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/features/profile/presentaion/widgets/profile_cards.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';


import '../widgets/delete_logout_card.dart';
import '../widgets/profile_model.dart';
import '../widgets/profile_top_section.dart';
import '../widgets/profile_user_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ProfileTopSection(
                      screenHeight: screenHeight, screenWidth: screenWidth)
                  .ProfileTop(context),
            ],
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: ListView(
              children: [
               const  ProfleScreenUserCard(),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Payments & Subsciptions',
                    style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 16.h,
                ),
                ListView.builder(
                    physics:const  NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ProfileMenuList.profilePaymentMenu.length,
                    itemBuilder: (context, index) {
                      return ProfileMenuCard(
                        prefixIcon: ProfileMenuList.profilePaymentMenu[index].iconString,
                        text: ProfileMenuList.profilePaymentMenu[index].menuString,

                      );
                    }),
                const Divider(
                  height: 0,
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Setting & Preferences',
                    style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 16.h,
                ),
                ListView.builder(
                    physics:const  NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ProfileMenuList.profileSettingsMenu.length,
                    itemBuilder: (context, index) {
                      return ProfileMenuCard(
                        prefixIcon: ProfileMenuList.profileSettingsMenu[index].iconString,
                        text: ProfileMenuList.profileSettingsMenu[index].menuString,
                        isSwitch: index==3?true:false,
                        
                      );
                    }),
                const Divider(
                  height: 0,
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Your Account',
                  style: TextStyle(fontSize: 14, color: AppColors.subTextColor),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ListView.builder(
                    physics:const  NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ProfileMenuList.profileYourAccountMenu.length,
                    itemBuilder: (context, index) {
                      return ProfileMenuCard(
                        prefixIcon: ProfileMenuList.profileYourAccountMenu[index].iconString,
                        text: ProfileMenuList.profileYourAccountMenu[index].menuString,
                      );
                    }),
                const Divider(
                  height: 0,
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Your Activity',
                  style: TextStyle(fontSize: 14, color: AppColors.subTextColor),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ListView.builder(
                    physics:const  NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ProfileMenuList.profileYourActivityMenu.length,
                    itemBuilder: (context, index) {
                      return ProfileMenuCard(
                        prefixIcon: ProfileMenuList.profileYourActivityMenu[index].iconString,
                        text: ProfileMenuList.profileYourActivityMenu[index].menuString,
                      );
                    }),
                const Divider(
                  height: 0,
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Support',
                  style: TextStyle(fontSize: 14, color: AppColors.subTextColor),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ListView.builder(
                  physics:const  NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ProfileMenuList.profileSupportMenu.length,
                    itemBuilder: (context, index) {
                      return ProfileMenuCard(
                        prefixIcon:  ProfileMenuList.profileSupportMenu[index].iconString,
                        text:  ProfileMenuList.profileSupportMenu[index].menuString,
                      );
                    }),
                SizedBox(
                  height: 10.h,
                ),
                DeleteLogoutCard(
                  text: 'Delete Account ',
                  isDelete: true,
                ),
                DeleteLogoutCard(
                  text: 'Logout Account ',
                  isDelete: false,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
