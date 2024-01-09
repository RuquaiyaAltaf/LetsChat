import '../home_delete_page/widgets/saymauihut_item_widget.dart';
import 'bloc/home_delete_bloc.dart';
import 'models/home_delete_model.dart';
import 'models/saymauihut_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeDeletePage extends StatelessWidget {
  const HomeDeletePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeDeleteBloc>(
      create: (context) => HomeDeleteBloc(HomeDeleteState(
        homeDeleteModelObj: HomeDeleteModel(),
      ))
        ..add(HomeDeleteInitialEvent()),
      child: HomeDeletePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:BlocProvider<HomeDeleteBloc>(
        create: (context) => HomeDeleteBloc(HomeDeleteState(
          homeDeleteModelObj: HomeDeleteModel(),
    ))
      ..add(HomeDeleteInitialEvent()),
        child:SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              _buildPlaylist(context),
            ],
          ),
        ))

      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 3.v,
            width: 30.h,
            decoration: BoxDecoration(
              color: appTheme.gray300,
              borderRadius: BorderRadius.circular(
                1.h,
              ),
            ),
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 1.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle10922,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_ai_support".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "msg_how_are_you_today".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Column(
                    children: [
                      Text(
                        "lbl_2_min_ago".tr,
                        style: CustomTextStyles.bodySmallLight,
                      ),
                      SizedBox(height: 2.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 22.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillRed.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_3".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 1.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse304,
                        height: 52.adaptSize,
                        width: 52.adaptSize,
                        radius: BorderRadius.circular(
                          26.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse386,
                        height: 52.adaptSize,
                        width: 52.adaptSize,
                        radius: BorderRadius.circular(
                          26.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse387,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_team_align".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      Text(
                        "msg_don_t_miss_to_attend".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 7.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "lbl_2_min_ago".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 2.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 22.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillRed.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_4".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          SizedBox(
            height: 61.v,
            width: 332.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle109261x57,
                  height: 61.v,
                  width: 57.h,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 69.h,
                      top: 4.v,
                    ),
                    child: Text(
                      "lbl_politics".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.only(
                            top: 33.v,
                            bottom: 2.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray500,
                            borderRadius: BorderRadius.circular(
                              4.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 17.h,
                            top: 26.v,
                          ),
                          child: Text(
                            "msg_hey_can_you_join".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            bottom: 25.v,
                          ),
                          child: Text(
                            "lbl_2_min_ago".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 1.h,
            ),
            child:
                BlocSelector<HomeDeleteBloc, HomeDeleteState, HomeDeleteModel?>(
              selector: (state) => state.homeDeleteModelObj,
              builder: (context, homeDeleteModelObj) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 30.v,
                    );
                  },
                  itemCount: homeDeleteModelObj?.saymauihutItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SaymauihutItemModel model =
                        homeDeleteModelObj?.saymauihutItemList[index] ??
                            SaymauihutItemModel();
                    return SaymauihutItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
