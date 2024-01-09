import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1170,
            height: 62.v,
            width: 135.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(20.h),
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              userprofileItemModelObj.earnMoneyText!,
              style: CustomTextStyles.titleSmallOnPrimaryContainer.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 31.h),
              child: Text(
                userprofileItemModelObj.timeText!,
                style: CustomTextStyles.bodySmallLight.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
