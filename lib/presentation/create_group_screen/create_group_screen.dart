import '../create_group_screen/widgets/membersuihut_item_widget.dart';
import 'bloc/create_group_bloc.dart';
import 'models/create_group_model.dart';
import 'models/membersuihut_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_subtitle.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:ruquaiya_s_application7/widgets/custom_elevated_button.dart';

class CreateGroupScreen extends StatelessWidget {
  const CreateGroupScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateGroupBloc>(
        create: (context) => CreateGroupBloc(
            CreateGroupState(createGroupModelObj: CreateGroupModel()))
          ..add(CreateGroupInitialEvent()),
        child: CreateGroupScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
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
                        EdgeInsets.symmetric(horizontal: 23.h, vertical: 10.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("msg_group_description".tr,
                                  style:
                                      CustomTextStyles.titleMediumPrimary16_1)),
                          SizedBox(height: 7.v),
                          Container(
                              width: 295.h,
                              margin: EdgeInsets.only(left: 1.h, right: 33.h),
                              child: Text("msg_make_group_for".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.displayMedium!
                                      .copyWith(height: 1.25))),
                          SizedBox(height: 18.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h, right: 50.h),
                              child: Row(children: [
                                CustomElevatedButton(
                                    height: 38.v,
                                    width: 113.h,
                                    text: "lbl_group_work".tr,
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimaryContainer,
                                    buttonTextStyle:
                                        CustomTextStyles.bodyMediumPrimary_1),
                                CustomElevatedButton(
                                    height: 38.v,
                                    width: 158.h,
                                    text: "msg_team_relationship".tr,
                                    margin: EdgeInsets.only(left: 7.h),
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimaryContainer,
                                    buttonTextStyle:
                                        CustomTextStyles.bodyMediumPrimary_1)
                              ])),
                          SizedBox(height: 27.v),
                          _buildAdminUihut(context),
                          SizedBox(height: 25.v),
                          _buildInvitedMembersUihut(context),
                          SizedBox(height: 5.v)
                        ]))),
            bottomNavigationBar: _buildCreate(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_create_group".tr));
  }

  /// Section Widget
  Widget _buildAdminUihut(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_group_admin".tr,
              style: CustomTextStyles.titleMediumPrimary16_1),
          SizedBox(height: 14.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse30752x52,
                height: 52.adaptSize,
                width: 52.adaptSize,
                radius: BorderRadius.circular(26.h)),
            Padding(
                padding: EdgeInsets.only(left: 12.h, top: 3.v, bottom: 4.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_rashid_khan".tr,
                          style: CustomTextStyles.titleMediumPrimary16),
                      SizedBox(height: 2.v),
                      Text("lbl_group_admin".tr,
                          style: CustomTextStyles.bodySmallPrimary_2)
                    ]))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildInvitedMembersUihut(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_invited_members".tr,
              style: CustomTextStyles.bodyLargePrimary),
          SizedBox(height: 16.v),
          BlocSelector<CreateGroupBloc, CreateGroupState, CreateGroupModel?>(
              selector: (state) => state.createGroupModelObj,
              builder: (context, createGroupModelObj) {
                return GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 71.v,
                        crossAxisCount: 4,
                        mainAxisSpacing: 16.h,
                        crossAxisSpacing: 16.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:
                        createGroupModelObj?.membersuihutItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      MembersuihutItemModel model =
                          createGroupModelObj?.membersuihutItemList[index] ??
                              MembersuihutItemModel();
                      return MembersuihutItemWidget(model);
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildCreate(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_create".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 30.v));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
