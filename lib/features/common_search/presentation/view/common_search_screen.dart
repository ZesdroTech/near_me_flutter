import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/features/common_search/presentation/widgets/trending_deals_widget.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';
import 'package:near_me_main_project/utils/app_constants/app_padding.dart';

import '../widgets/common_search_bar.dart';
import '../widgets/recent_searches_widget.dart';

class CommonSearchScreen extends StatelessWidget {
  const CommonSearchScreen({super.key});

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
              const Text(
                'Search',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const CommonSearchBar(),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent Searches',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Clear',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
             RecentSearchesWidget(),
              SizedBox(
                height: 68.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Trending deals in the city',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              TrendingDealsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
