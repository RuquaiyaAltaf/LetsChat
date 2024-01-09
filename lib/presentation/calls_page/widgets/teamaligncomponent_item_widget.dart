import '../models/teamaligncomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class TeamaligncomponentItemWidget extends StatelessWidget {
  TeamaligncomponentItemWidget(
    this.teamaligncomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TeamaligncomponentItemModel teamaligncomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          SizedBox(
            height: 52.adaptSize,
            width: 52.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: teamaligncomponentItemModelObj?.teamAlignImage1,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: teamaligncomponentItemModelObj?.teamAlignImage2,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: teamaligncomponentItemModelObj?.teamAlignImage3,
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teamaligncomponentItemModelObj.teamAlignText!,
                  style: theme.textTheme.titleMedium,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath:
                          teamaligncomponentItemModelObj?.teamAlignImage4,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        teamaligncomponentItemModelObj.teamAlignText2!,
                        style: CustomTextStyles.bodySmallGray600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCallGray50001,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 14.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUploadGray50001,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 14.v,
              bottom: 14.v,
            ),
          ),
        ],
      ),
    );
  }
}
