import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:ruquaiya_s_application7/widgets/custom_elevated_button.dart';
import 'package:ruquaiya_s_application7/presentation/home_bottomsheet/home_bottomsheet.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 40.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("msg_sign_up_with_email".tr,
                                    style: CustomTextStyles
                                        .titleMediumPrimaryBold_1)),
                            SizedBox(height: 12.v),
                            Container(
                                width: 262.h,
                                margin:
                                    EdgeInsets.only(left: 26.h, right: 47.h),
                                child: Text("msg_get_chatting_with".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodyMediumPrimary
                                        .copyWith(height: 1.43))),
                            SizedBox(height: 53.v),
                            Text("lbl_your_name".tr,
                                style: theme.textTheme.titleSmall),
                            SizedBox(height: 40.v),
                            Divider(indent: 5.h, endIndent: 5.h),
                            SizedBox(height: 25.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("lbl_your_email".tr,
                                    style: theme.textTheme.titleSmall)),
                            SizedBox(height: 40.v),
                            Divider(indent: 5.h, endIndent: 5.h),
                            SizedBox(height: 25.v),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text("lbl_password".tr,
                                    style: theme.textTheme.titleSmall)),
                            SizedBox(height: 40.v),
                            Divider(indent: 5.h, endIndent: 5.h),
                            SizedBox(height: 25.v),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text("msg_confirm_password".tr,
                                    style: theme.textTheme.titleSmall)),
                            SizedBox(height: 40.v),
                            Divider(indent: 5.h, endIndent: 5.h),
                            SizedBox(height: 5.v)
                          ]))),
              bottomNavigationBar: _buildCreateAccountButton(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector190Primary,
            margin: EdgeInsets.fromLTRB(30.h, 24.v, 333.h, 24.v)));
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_create_an_account".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        onPressed: () {
          onTapCreateAccountButton(context);
        });
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [HomeBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapCreateAccountButton(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => HomeBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
