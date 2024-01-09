import '../models/usersuihut_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UsersuihutItemWidget extends StatelessWidget {
  UsersuihutItemWidget(
    this.usersuihutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsersuihutItemModel usersuihutItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 69.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 69.adaptSize,
          width: 69.adaptSize,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: usersuihutItemModelObj?.circleImage,
                height: 64.adaptSize,
                width: 64.adaptSize,
                radius: BorderRadius.circular(
                  32.h,
                ),
                alignment: Alignment.topLeft,
              ),
              CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                alignment: Alignment.bottomRight,
                child: CustomImageView(
                  imagePath: usersuihutItemModelObj?.music,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
