import '../home_bottomsheet/widgets/userprofile_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

class HomeBottomsheet extends StatelessWidget {
  const HomeBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 9.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Container(
                  height: 3.v,
                  width: 30.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray300,
                      borderRadius: BorderRadius.circular(1.h))),
              SizedBox(height: 41.v),
              SizedBox(
                  height: 487.v,
                  width: 322.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 86.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgNavContacts,
                                      height: 26.adaptSize,
                                      width: 26.adaptSize),
                                  SizedBox(height: 2.v),
                                  Text("lbl_contacts".tr,
                                      style: theme.textTheme.bodyLarge)
                                ]))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildRecentOrders(context),
                              SizedBox(height: 19.v),
                              _buildUserProfile(context)
                            ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 141.v,
          width: 143.h,
          child: Stack(alignment: Alignment.centerLeft, children: [
            Align(
                alignment: Alignment.topRight,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v),
                    decoration: AppDecoration.fillRed.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12),
                    child: Text("lbl_3".tr,
                        style: theme.textTheme.labelLarge!
                            .copyWith(decoration: TextDecoration.underline)))),
            Align(
                alignment: Alignment.centerLeft,
                child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: appTheme.gray300,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder18),
                    child: Container(
                        height: 135.adaptSize,
                        width: 135.adaptSize,
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder18),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 16.v),
                                  child: Text("lbl_2_min_ago".tr,
                                      style: CustomTextStyles.bodySmallLight
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline)))),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapAISUPPORT(context);
                                  },
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle109261x135,
                                            height: 59.v,
                                            width: 135.h,
                                            radius: BorderRadius.vertical(
                                                top: Radius.circular(20.h))),
                                        SizedBox(height: 11.v),
                                        Text("lbl_ai_support".tr,
                                            style: CustomTextStyles
                                                .titleSmallOnPrimaryContainer
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline)),
                                        SizedBox(height: 28.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: 8.v,
                                                width: 9.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.greenA400,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.h))))
                                      ])))
                        ]))))
          ])),
      SizedBox(
          height: 141.v,
          width: 143.h,
          child: Stack(alignment: Alignment.centerLeft, children: [
            Align(
                alignment: Alignment.topRight,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 3.v),
                    decoration: AppDecoration.fillRed.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12),
                    child: Text("lbl_4".tr,
                        style: theme.textTheme.labelLarge!
                            .copyWith(decoration: TextDecoration.underline)))),
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    decoration: AppDecoration.fillBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder18),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 62.v,
                              width: 135.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle1168,
                                    height: 62.v,
                                    width: 135.h,
                                    radius: BorderRadius.vertical(
                                        top: Radius.circular(20.h)),
                                    alignment: Alignment.center),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle109262x135,
                                    height: 62.v,
                                    width: 135.h,
                                    radius: BorderRadius.vertical(
                                        top: Radius.circular(20.h)),
                                    alignment: Alignment.center)
                              ])),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Text("lbl_team_align".tr,
                                  style: CustomTextStyles
                                      .titleSmallOnPrimaryContainer
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline))),
                          SizedBox(height: 5.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 31.h),
                                  child: Text("lbl_2_min_ago".tr,
                                      style: CustomTextStyles.bodySmallLight
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline)))),
                          SizedBox(height: 10.v)
                        ])))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
            selector: (state) => state.homeModelObj,
            builder: (context, homeModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 136.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 44.h,
                      crossAxisSpacing: 44.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: homeModelObj?.userprofileItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    UserprofileItemModel model =
                        homeModelObj?.userprofileItemList[index] ??
                            UserprofileItemModel();
                    return UserprofileItemWidget(model);
                  });
            }));
  }

  /// Navigates to the groupMessageScreen when the action is triggered.
  onTapAISUPPORT(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.groupMessageScreen,
    );
  }
}
