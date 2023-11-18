import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent, // Make the app bar transparent
      elevation: 0, // Remove the shadow
      flexibleSpace: Container(
        height: 120.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pattern (3).png'),
            // Replace with your image path
            fit: BoxFit.cover,
          ),

        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/images/near_me_logo.svg',
            height: 20.h,
          ),
        ),
      ),
    ));
  }
}
