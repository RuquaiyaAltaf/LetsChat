import '../group_call_screen/widgets/usersuihut_item_widget.dart';
import 'bloc/group_call_bloc.dart';
import 'models/group_call_model.dart';
import 'models/usersuihut_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/widgets/custom_icon_button.dart';

class GroupCallScreen extends StatelessWidget {
  const GroupCallScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<GroupCallBloc>(
      create: (context) => GroupCallBloc(GroupCallState(
        groupCallModelObj: GroupCallModel(),
      ))
        ..add(GroupCallInitialEvent()),
      child: GroupCallScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.red800Db,
                appTheme.gray900,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(
                  height: 635.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle1110,
                        height: 635.v,
                        width: 375.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 23.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 260.h,
                                margin: EdgeInsets.only(right: 68.h),
                                child: Text(
                                  "msg_meeting_with_lora".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      theme.textTheme.displayMedium!.copyWith(
                                    height: 1.20,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse424,
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        radius: BorderRadius.circular(
                                          18.h,
                                        ),
                                        margin: EdgeInsets.only(
                                          top: 1.v,
                                          bottom: 3.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_lora_adom".tr,
                                              style: CustomTextStyles
                                                  .titleMediumPrimaryBold,
                                            ),
                                            Text(
                                              "msg_meeting_organizer".tr,
                                              style: CustomTextStyles
                                                  .labelLargeIndigo50,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 217.v),
                                  Row(
                                    children: [
                                      Opacity(
                                        opacity: 0.45,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse425,
                                          height: 36.adaptSize,
                                          width: 36.adaptSize,
                                          radius: BorderRadius.circular(
                                            18.h,
                                          ),
                                          margin: EdgeInsets.symmetric(
                                              vertical: 1.v),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Opacity(
                                              opacity: 0.35,
                                              child: Text(
                                                "lbl_dean_ronload".tr,
                                                style: CustomTextStyles
                                                    .titleSmallBluegray20001Bold_1,
                                              ),
                                            ),
                                            Opacity(
                                              opacity: 0.5,
                                              child: Text(
                                                "msg_sounds_resonable".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle1092,
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        radius: BorderRadius.circular(
                                          18.h,
                                        ),
                                        margin:
                                            EdgeInsets.symmetric(vertical: 2.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Opacity(
                                              opacity: 0.85,
                                              child: Text(
                                                "lbl_annei_ellison".tr,
                                                style: CustomTextStyles
                                                    .titleSmallBluegray20001Bold,
                                              ),
                                            ),
                                            Text(
                                              "msg_what_about_our_profit".tr,
                                              style: CustomTextStyles
                                                  .titleSmallBlack,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 14.v),
                                  Padding(
                                    padding: EdgeInsets.only(right: 65.h),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle1112,
                                          height: 36.adaptSize,
                                          width: 36.adaptSize,
                                          radius: BorderRadius.circular(
                                            18.h,
                                          ),
                                          margin: EdgeInsets.symmetric(
                                              vertical: 2.v),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 12.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "lbl_john_borino".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallBluegray20001,
                                                ),
                                                Text(
                                                  "msg_what_led_you_to".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallBlack,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 27.v),
                                  _buildIconsUihut(context),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.v),
                _buildUsersUihut(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIconsUihut(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 11.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgMenu,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgUser,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgUpload,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPrimaryContainer,
              child: CustomImageView(
                imagePath: ImageConstant.imgUserPrimary,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillRed,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUsersUihut(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 69.v,
        child: BlocSelector<GroupCallBloc, GroupCallState, GroupCallModel?>(
          selector: (state) => state.groupCallModelObj,
          builder: (context, groupCallModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 15.h,
                );
              },
              itemCount: groupCallModelObj?.usersuihutItemList.length ?? 0,
              itemBuilder: (context, index) {
                UsersuihutItemModel model =
                    groupCallModelObj?.usersuihutItemList[index] ??
                        UsersuihutItemModel();
                return UsersuihutItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
