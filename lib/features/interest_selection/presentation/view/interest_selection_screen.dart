import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/features/interest_selection/presentation/widgets/chip_choices.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';
import 'package:near_me_main_project/utils/app_constants/app_padding.dart';
import 'package:near_me_main_project/utils/common_widgets/common_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/selected_count_container.dart';

class InterestSelectionScreen extends StatelessWidget {
  InterestSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.padding24Horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32.h,
              ),
              const Icon(Icons.arrow_back_ios_new),
              SizedBox(
                height: 32.h,
              ),
              Text(
                '4 of 5',
                  style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 174.w),
                child: StepProgressIndicator(
                  totalSteps: 5,
                  currentStep: 4,
                  selectedColor: AppColors.blue,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'What are your interests ?',
                  style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Choose a few interests to help us personalize your\nhome feed and display the best experiences\naround you',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 18,
                    color: Theme.of(context).dividerColor,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Please select two or more interests',
                      style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              SizedBox(
                height: 33.h,
              ),
              InterestChipChoice(),
              SizedBox(
                height: 31.h,
              ),
              Text(
                'See more interests',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blue),
              ),
              SizedBox(
                height: 32.h,
              ),
             const  SelectedCountContainer(),
              SizedBox(
                height: 16.h,
              ),
              DefaultButton(text: 'Continue', onButtonPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
