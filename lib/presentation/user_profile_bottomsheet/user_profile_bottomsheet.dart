import '../user_profile_bottomsheet/widgets/userprofile1_item_widget.dart';
import 'bloc/user_profile_bloc.dart';
import 'models/user_profile_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UserProfileBottomsheet extends StatelessWidget {
  const UserProfileBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<UserProfileBloc>(
      create: (context) => UserProfileBloc(UserProfileState(
        userProfileModelObj: UserProfileModel(),
      ))
        ..add(UserProfileInitialEvent()),
      child: UserProfileBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 3.v,
              width: 30.h,
              decoration: BoxDecoration(
                color: appTheme.gray300,
                borderRadius: BorderRadius.circular(
                  1.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 21.v),
          Text(
            "lbl_display_name".tr,
            style: theme.textTheme.bodyMedium,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_jhon_abraham".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 22.v),
          Text(
            "lbl_email_address".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "msg_jhonabraham20_gmail_com".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 20.v),
          Text(
            "lbl_address".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_33_street_west".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 20.v),
          Text(
            "lbl_phone_number".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_320_555_0104".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 22.v),
          _buildMediaSharedSection(context),
          SizedBox(height: 51.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMediaSharedSection(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_media_shared".tr,
              style: theme.textTheme.bodyMedium,
            ),
            Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.bodyMediumTeal400,
            ),
          ],
        ),
        SizedBox(height: 16.v),
        SizedBox(
          height: 92.v,
          child: BlocSelector<UserProfileBloc, UserProfileState,
              UserProfileModel?>(
            selector: (state) => state.userProfileModelObj,
            builder: (context, userProfileModelObj) {
              return ListView.separated(
                padding: EdgeInsets.only(
                  left: 4.h,
                  right: 7.h,
                ),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 20.h,
                  );
                },
                itemCount:
                    userProfileModelObj?.userprofile1ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Userprofile1ItemModel model =
                      userProfileModelObj?.userprofile1ItemList[index] ??
                          Userprofile1ItemModel();
                  return Userprofile1ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
