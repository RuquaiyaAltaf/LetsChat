import '../models/saymauihut_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class SaymauihutItemWidget extends StatelessWidget {
  SaymauihutItemWidget(
    this.saymauihutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SaymauihutItemModel saymauihutItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 52.adaptSize,
          width: 52.adaptSize,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: saymauihutItemModelObj?.howToEarnImage,
                height: 52.adaptSize,
                width: 52.adaptSize,
                radius: BorderRadius.circular(
                  26.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: saymauihutItemModelObj?.howToEarnImage2,
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
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.errorContainer,
                            borderRadius: BorderRadius.circular(
                              4.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 4.v,
          ),
          child: Column(
            children: [
              Text(
                saymauihutItemModelObj.howToEarnText!,
                style: theme.textTheme.titleLarge,
              ),
              Text(
                saymauihutItemModelObj.howAreYouTodayText!,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 26.v,
          ),
          child: Text(
            saymauihutItemModelObj.timeText!,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
