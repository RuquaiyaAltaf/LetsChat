import 'bloc/group_message_bloc.dart';
import 'models/group_message_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_title.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:ruquaiya_s_application7/widgets/custom_text_form_field.dart';

class GroupMessageScreen extends StatelessWidget {
  const GroupMessageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<GroupMessageBloc>(
        create: (context) => GroupMessageBloc(
            GroupMessageState(groupMessageModelObj: GroupMessageModel()))
          ..add(GroupMessageInitialEvent()),
        child: GroupMessageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.red800Db, appTheme.gray900])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 81.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle109240x40,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        radius: BorderRadius.circular(20.h),
                                        margin: EdgeInsets.only(bottom: 48.v)),
                                    Expanded(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 12.h, top: 2.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                          "lbl_hafizur_rahman"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleSmall_1)),
                                                  SizedBox(height: 8.v),
                                                  SizedBox(
                                                      height: 36.v,
                                                      width: 184.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle1131,
                                                                height: 36.v,
                                                                width: 184.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        bottom: 7
                                                                            .v),
                                                                    child: Text(
                                                                        "msg_have_a_great_working"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodySmallOnPrimaryContainer)))
                                                          ])),
                                                  SizedBox(height: 5.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 4.h),
                                                      child: Text(
                                                          "lbl_09_25_am".tr,
                                                          style: theme.textTheme
                                                              .labelMedium))
                                                ])))
                                  ])),
                          SizedBox(height: 27.v),
                          Padding(
                              padding: EdgeInsets.only(right: 73.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse30440x40,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        radius: BorderRadius.circular(20.h),
                                        margin: EdgeInsets.only(bottom: 180.v)),
                                    Expanded(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 12.h, top: 3.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_majharul_haque".tr,
                                                      style: CustomTextStyles
                                                          .titleSmall_1),
                                                  SizedBox(height: 7.v),
                                                  Container(
                                                      height: 36.v,
                                                      width: 164.h,
                                                      margin: EdgeInsets.only(
                                                          left: 10.h),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle1131Gray10001,
                                                                height: 36.v,
                                                                width: 164.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        bottom: 7
                                                                            .v),
                                                                    child: Text(
                                                                        "msg_this_is_my_new_3d"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .bodySmallOnPrimaryContainer)))
                                                          ])),
                                                  SizedBox(height: 10.v),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle1131122x192,
                                                      height: 122.v,
                                                      width: 192.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              12.h),
                                                      margin: EdgeInsets.only(
                                                          left: 10.h)),
                                                  SizedBox(height: 5.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 4.h),
                                                          child: Text(
                                                              "lbl_09_25_am".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelMedium)))
                                                ])))
                                  ])),
                          SizedBox(height: 27.v),
                          Padding(
                              padding: EdgeInsets.only(right: 45.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle1132,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        radius: BorderRadius.circular(20.h),
                                        margin: EdgeInsets.only(bottom: 50.v)),
                                    Container(
                                        height: 88.v,
                                        width: 230.h,
                                        margin: EdgeInsets.only(
                                            left: 12.h, top: 2.v),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 4.h),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_annei_ellison"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleSmall_1),
                                                            SizedBox(
                                                                height: 52.v),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Text(
                                                                    "lbl_09_25_am"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelMedium))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      height: 38.v,
                                                      width: 220.h,
                                                      margin: EdgeInsets.only(
                                                          bottom: 20.v),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle1131Gray10001,
                                                                height: 38.v,
                                                                width: 220.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                          height: 22
                                                                              .adaptSize,
                                                                          width: 22
                                                                              .adaptSize,
                                                                          padding: EdgeInsets.symmetric(
                                                                              vertical: 1
                                                                                  .v),
                                                                          decoration: AppDecoration.fillPrimary.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder12),
                                                                          child: CustomImageView(
                                                                              imagePath: ImageConstant.imgPlay,
                                                                              height: 20.adaptSize,
                                                                              width: 20.adaptSize,
                                                                              alignment: Alignment.centerRight)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgGroup71,
                                                                          height: 14
                                                                              .v,
                                                                          width: 122
                                                                              .h,
                                                                          margin: EdgeInsets.only(
                                                                              left: 10.h,
                                                                              top: 4.v,
                                                                              bottom: 4.v)),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 10
                                                                                  .h,
                                                                              bottom: 2
                                                                                  .v),
                                                                          child: Text(
                                                                              "lbl_00_16".tr,
                                                                              style: CustomTextStyles.bodySmallOnPrimaryContainer_1))
                                                                    ]))
                                                          ])))
                                            ]))
                                  ])),
                          SizedBox(height: 27.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 85.v,
                                        width: 151.h,
                                        margin: EdgeInsets.only(top: 2.v),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 4.h),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Text(
                                                                    "lbl_you"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleSmallBold_1)),
                                                            SizedBox(
                                                                height: 49.v),
                                                            Text(
                                                                "lbl_09_25_am"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium)
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      height: 37.v,
                                                      width: 141.h,
                                                      margin: EdgeInsets.only(
                                                          bottom: 20.v),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle1131Primarycontainer,
                                                                height: 37.v,
                                                                width: 141.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                    "msg_you_did_your_job"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallPrimary))
                                                          ])))
                                            ])),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse30748x48,
                                        height: 48.adaptSize,
                                        width: 48.adaptSize,
                                        radius: BorderRadius.circular(24.h),
                                        margin: EdgeInsets.only(
                                            left: 12.h, bottom: 39.v))
                                  ])),
                          SizedBox(height: 8.v)
                        ]))),
            bottomNavigationBar: _buildNabBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 80.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgArrowDownOnprimarycontainer,
            margin: EdgeInsets.only(left: 24.h, top: 26.v, bottom: 30.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Row(children: [
              AppbarTitleCircleimage(imagePath: ImageConstant.imgEllipse319),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, bottom: 3.v),
                  child: Column(children: [
                    AppbarTitle(
                        text: "lbl_politics2".tr,
                        margin: EdgeInsets.only(right: 65.h)),
                    AppbarSubtitleOne(text: "msg_8_members_5_online".tr)
                  ]))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCallOnprimarycontainer,
              margin: EdgeInsets.only(left: 23.h, top: 26.v, right: 30.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUploadOnprimarycontainer,
              margin: EdgeInsets.only(left: 17.h, top: 26.v, right: 53.h),
              onTap: () {
                onTapUpload(context);
              })
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildNabBar(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 30.v),
        decoration: AppDecoration.outlineSecondaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgAttach,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 8.v)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: BlocSelector<GroupMessageBloc, GroupMessageState,
                          TextEditingController?>(
                      selector: (state) => state.messageController,
                      builder: (context, messageController) {
                        return CustomTextFormField(
                            width: 216.h,
                            controller: messageController,
                            hintText: "msg_write_your_message".tr,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFiles,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            suffixConstraints: BoxConstraints(maxHeight: 40.v));
                      })),
              CustomImageView(
                  imagePath: ImageConstant.imgCamera01,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgMicrophone,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 12.h, top: 8.v, bottom: 8.v))
            ]));
  }

  /// Navigates to the homeDeleteContainerScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeDeleteContainerScreen,
    );
  }

  /// Navigates to the groupCallScreen when the action is triggered.
  onTapUpload(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.groupCallScreen,
    );
  }
}
