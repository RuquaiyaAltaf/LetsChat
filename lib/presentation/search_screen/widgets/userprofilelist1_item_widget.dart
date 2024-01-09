import '../models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 52.adaptSize,
          width: 52.adaptSize,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: userprofilelist1ItemModelObj?.userImage1,
                height: 52.adaptSize,
                width: 52.adaptSize,
                radius: BorderRadius.circular(
                  26.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: userprofilelist1ItemModelObj?.userImage2,
                height: 52.adaptSize,
                width: 52.adaptSize,
                radius: BorderRadius.circular(
                  26.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: userprofilelist1ItemModelObj?.userImage3,
                height: 52.adaptSize,
                width: 52.adaptSize,
                radius: BorderRadius.circular(
                  26.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(
                    right: 6.h,
                    bottom: 2.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.greenA400,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofilelist1ItemModelObj.dynamicProperty2!,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  userprofilelist1ItemModelObj.dynamicProperty3!,
                  style: CustomTextStyles.bodySmallPrimary_1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
