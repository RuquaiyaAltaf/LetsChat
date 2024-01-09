import 'package:firebase_auth/firebase_auth.dart';

import '../../New_classes/PasswordTextField.dart';
import '../app_navigation_screen/app_navigation_screen.dart';
import '../home_delete_container_screen/home_delete_container_screen.dart';
import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:ruquaiya_s_application7/widgets/custom_elevated_button.dart';
import 'package:ruquaiya_s_application7/presentation/home_bottomsheet/home_bottomsheet.dart';

class SignInScreen extends StatelessWidget {


   SignInScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
  }
   TextEditingController _emailController = TextEditingController();
   TextEditingController _passwordController = TextEditingController();


   @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 31.v),
                  child: Column(children: [
                    SizedBox(height: 8.v),
                    Text("msg_log_in_to_chatbox".tr,
                        style: CustomTextStyles.titleMediumPrimaryBold_1),
                    SizedBox(height: 13.v),
                    Container(
                        width: 281.h,
                        margin: EdgeInsets.only(left: 26.h, right: 27.h),
                        child: Text("msg_welcome_back_sign".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumPrimary
                                .copyWith(height: 1.43))),
                    SizedBox(height: 40.v),
                    EmailTextField(
                      controller: _emailController,
                      hintText: 'Enter your email address',),
                    SizedBox(height: 27.v),
                    PasswordTextField(
                      controller: _passwordController,
                      hintText: 'Enter your password',
                    ),
                    SizedBox(height: 20.v),

                    CustomElevatedButton(
                        text: "lbl_sign_up".tr,
                        margin: EdgeInsets.symmetric(horizontal: 4.h),
                        onPressed: () {
                          onTapLogIn(context);
                          // if(_emailController.text.isNotEmpty && _passwordController.text.length >6){
                          //   login();
                          // }else{
                          //   debugPrint("Log: Email or Password is Empty");
                          // }
                        }),
                    // SizedBox(height: 14.v),
                    // Text("msg_forgot_password".tr,
                    //     style: theme.textTheme.titleSmall)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector190,
            margin: EdgeInsets.fromLTRB(30.h, 24.v, 333.h, 24.v)));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [HomeBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapLogIn(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => HomeDeleteContainerScreen.builder(context),
        // builder: (_) => HomeBottomsheet.builder(context),
        isScrollControlled: true);
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => HomeDeleteContainerScreen(), // Replace NextScreen with the actual screen you want to navigate to
    //   ),
    // );
  }

  // Future <void> login() async{
  //    final auth =FirebaseAuth.instance;
  //    auth.signInWithEmailAndPassword(
  //        email: _emailController.text, password: _passwordController.text);
  // }
}
