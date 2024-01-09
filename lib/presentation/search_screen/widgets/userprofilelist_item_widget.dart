import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: userprofilelistItemModelObj?.userImage,
          height: 52.adaptSize,
          width: 52.adaptSize,
          radius: BorderRadius.circular(
            26.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userprofilelistItemModelObj.userName!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 1.v),
              Text(
                userprofilelistItemModelObj.userTagline!,
                style: CustomTextStyles.bodySmallOnError,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
