import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SignupMainText extends StatelessWidget {
  SignupMainText({super.key, this.screenWidth});
// ignore: prefer_typing_uninitialized_variables
  var screenWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
          children: [
            Text(
              'Welcome to',
              //font size 42
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            //font size 42
            Text(
              'NearMe',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ));
  }
}