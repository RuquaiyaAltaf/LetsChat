import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 92.h,
      child: CustomImageView(
        imagePath: userprofile1ItemModelObj?.rectangle,
        height: 92.adaptSize,
        width: 92.adaptSize,
        radius: BorderRadius.circular(
          16.h,
        ),
      ),
    );
  }
}
