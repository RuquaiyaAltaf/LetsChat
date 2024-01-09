import 'package:ruquaiya_s_application7/presentation/splash_screen/splash_screen.dart';

import 'bloc/splash_one_bloc.dart';
import 'models/splash_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ruquaiya_s_application7/core/app_export.dart';

class SplashOneScreen extends StatelessWidget {
  const SplashOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return SplashOneScreen();
  }

  @override
  Widget build(BuildContext context) {
    // Add a delay to simulate some loading time
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SplashScreen(), // Replace NextScreen with the actual screen you want to navigate to
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
                appTheme.red900,
                appTheme.gray90001,
              ],
            ),
          ),
          child: SizedBox(
            height: 768.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                _buildLetSChatSection(context),
                Opacity(
                  opacity: 0.63,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEllipse1226,
                    height: 464.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Section Widget
  Widget _buildLetSChatSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 67.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup1,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 89.v),
            Text(
              "lbl_let_s_chat".tr,
              style: CustomTextStyles.acmePrimary,
            ),
          ],
        ),
      ),
    );
  }
}
