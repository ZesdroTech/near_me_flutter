import 'package:flutter/material.dart';

import '../../../../utils/app_constants/app_padding.dart';

class LoginTextFields {
  // ignore: prefer_typing_uninitialized_variables
  var hintText;

  // ignore: prefer_typing_uninitialized_variables
  var controller;

  LoginTextFields({this.hintText, required this.controller});

  Widget buildLoginTextFields(BuildContext context) {
    return Padding(
      padding: AppPadding.padding24Horizontal,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,hintStyle: Theme.of(context).textTheme.titleMedium,
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.5),// Set opacity here
              ),
            )),
      ),
    );
  }
}
