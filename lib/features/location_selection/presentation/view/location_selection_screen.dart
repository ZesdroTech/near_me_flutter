import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';
import 'package:near_me_main_project/utils/app_constants/app_padding.dart';
import 'package:near_me_main_project/utils/common_widgets/common_button.dart';
import 'package:near_me_main_project/utils/common_widgets/divider_area.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/location_selection_box.dart';

class LocationSelectionScreen extends StatelessWidget {
  const LocationSelectionScreen({super.key});

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
                '5 of 5',
                  style:   Theme.of(context).textTheme.bodyLarge
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 176.w),
                child: StepProgressIndicator(
                  totalSteps: 5,
                  currentStep: 5,
                  selectedColor: AppColors.blue,
                ),
              ),
              SizedBox(
                height: 34.h,
              ),
              Text(
                'Where are you ?',
                style:   Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 8.h,),
              Text(
                'Enter your location below',
                style:   Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 59.h,
              ),
              LocationSelectionBox(
                isAuto: false,
                tittle: 'Eranakulam,Kerala',
              ),
              SizedBox(height: 8.h),
              DividerArea().buildDivider(context),
              SizedBox(height: 8.h,),
              LocationSelectionBox(
                isAuto: true,
                tittle: 'Use current location',
              ),
              SizedBox(
                height: 323.h,
              ),
              DefaultButton(text: 'Continue', onButtonPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
