import '../settings_page/widgets/accountsettings_item_widget.dart';
import 'bloc/settings_bloc.dart';
import 'models/accountsettings_item_model.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (context) => SettingsBloc(SettingsState(
        settingsModelObj: SettingsModel(),
      ))
        ..add(SettingsInitialEvent()),
      child: SettingsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:BlocProvider<SettingsBloc>(
        create: (context) => SettingsBloc(SettingsState(
          settingsModelObj: SettingsModel(),
    ))
      ..add(SettingsInitialEvent()),
        child:         SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 91.v),
              Container(
                padding: EdgeInsets.symmetric(vertical: 14.v),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL40,
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
                    SizedBox(height: 24.v),
                    _buildProfile(context),
                    SizedBox(height: 20.v),
                    Divider(
                      color: appTheme.gray10004,
                    ),
                    SizedBox(height: 29.v),
                    _buildAccountSettings(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        )

      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse307,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_nazrul_islam".tr,
                  style: CustomTextStyles.titleLargeBold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "msg_never_give_up".tr,
                    style: CustomTextStyles.bodySmallGray600,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgPrinter,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 18.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAccountSettings(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 65.h,
        ),
        child: BlocSelector<SettingsBloc, SettingsState, SettingsModel?>(
          selector: (state) => state.settingsModelObj,
          builder: (context, settingsModelObj) {
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
              itemCount: settingsModelObj?.accountsettingsItemList.length ?? 0,
              itemBuilder: (context, index) {
                AccountsettingsItemModel model =
                    settingsModelObj?.accountsettingsItemList[index] ??
                        AccountsettingsItemModel();
                return AccountsettingsItemWidget(
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
