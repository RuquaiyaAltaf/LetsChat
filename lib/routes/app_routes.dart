import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/presentation/group_call_screen/group_call_screen.dart';
import 'package:ruquaiya_s_application7/presentation/splash_one_screen/splash_one_screen.dart';
import 'package:ruquaiya_s_application7/presentation/splash_screen/splash_screen.dart';
import 'package:ruquaiya_s_application7/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:ruquaiya_s_application7/presentation/create_group_screen/create_group_screen.dart';
import 'package:ruquaiya_s_application7/presentation/home_delete_container_screen/home_delete_container_screen.dart';
import 'package:ruquaiya_s_application7/presentation/group_message_screen/group_message_screen.dart';
import 'package:ruquaiya_s_application7/presentation/search_screen/search_screen.dart';
import 'package:ruquaiya_s_application7/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:ruquaiya_s_application7/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String groupCallScreen = '/group_call_screen';

  static const String settingsPage = '/settings_page';

  static const String callsPage = '/calls_page';

  static const String contactsPage = '/contacts_page';

  static const String splashOneScreen = '/splash_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String createGroupScreen = '/create_group_screen';

  static const String homeDeletePage = '/home_delete_page';

  static const String homeDeleteContainerScreen = '/home_delete_container_screen';

  static const String groupMessageScreen = '/group_message_screen';

  static const String searchScreen = '/search_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        groupCallScreen: GroupCallScreen.builder,
        // splashOneScreen: SplashOneScreen.builder,
        splashScreen: SplashScreen.builder,
        signInScreen: SignInScreen.builder,
        createGroupScreen: CreateGroupScreen.builder,
        homeDeleteContainerScreen: HomeDeleteContainerScreen.builder,
        groupMessageScreen: GroupMessageScreen.builder,
        searchScreen: SearchScreen.builder,
        signUpScreen: SignUpScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashOneScreen.builder,
      };
}
