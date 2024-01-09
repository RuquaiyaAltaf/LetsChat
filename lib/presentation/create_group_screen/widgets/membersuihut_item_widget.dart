import '../models/membersuihut_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class MembersuihutItemWidget extends StatelessWidget {
  MembersuihutItemWidget(
    this.membersuihutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MembersuihutItemModel membersuihutItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: membersuihutItemModelObj?.ellipse,
      height: 70.adaptSize,
      width: 70.adaptSize,
      radius: BorderRadius.circular(
        35.h,
      ),
    );
  }
}
