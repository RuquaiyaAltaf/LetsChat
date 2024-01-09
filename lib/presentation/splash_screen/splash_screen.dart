import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:ruquaiya_s_application7/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ruquaiya_s_application7/widgets/custom_elevated_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return SplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    // Add a delay to simulate some loading time
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignInScreen.builder(context),
        ),
      );
    });

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
                appTheme.redA700,
                theme.colorScheme.onErrorContainer,
              ],
            ),
          ),
          child: SizedBox(
            height: 768.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 414.v,
                    width: 373.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1165,
                          height: 414.v,
                          width: 373.h,
                          alignment: Alignment.center,
                        ),
                        _buildSignUpWithEmailSection(context),
                      ],
                    ),
                  ),
                ),
                _buildJoinWithWorldSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpWithEmailSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 51.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // CustomElevatedButton(
            //   text: "msg_sign_up_withn_mail".tr,
            //   buttonStyle: CustomButtonStyles.fillPrimary,
            //   buttonTextStyle: CustomTextStyles.titleMediumPrimary16,
            //   onPressed: () {
            //     // onTapSignUpWithnMail(context);
            //   },
            // ),
            SizedBox(height: 43.v),
            GestureDetector(
              onTap: () {
                onTapTxtExistingaccount(context);
              },
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_existing_account2".tr,
                      style: CustomTextStyles.bodyMediumPrimary_2,
                    ),
                    TextSpan(text: " "),
                    TextSpan(
                      text: "lbl_log_in".tr,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJoinWithWorldSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 390.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.63,
              child: CustomImageView(
                imagePath: ImageConstant.imgEllipse1227,
                height: 390.v,
                width: 375.h,
                alignment: Alignment.center,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 233.h,
                child: Text(
                  "msg_join_with_world".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.displayMediumBold.copyWith(height: 1.63),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapSignUpWithnMail(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen.builder(context),
      ),
    );
  }

  onTapTxtExistingaccount(BuildContext context) {
    // Handle the onTap event for existing account
  }
}
