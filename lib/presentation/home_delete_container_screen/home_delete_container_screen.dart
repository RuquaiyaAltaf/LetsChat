import 'bloc/home_delete_container_bloc.dart';
import 'models/home_delete_container_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/presentation/calls_page/calls_page.dart';
import 'package:ruquaiya_s_application7/presentation/contacts_page/contacts_page.dart';
import 'package:ruquaiya_s_application7/presentation/home_delete_page/home_delete_page.dart';
import 'package:ruquaiya_s_application7/presentation/settings_page/settings_page.dart';
import 'package:ruquaiya_s_application7/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeDeleteContainerScreen extends StatelessWidget {
  HomeDeleteContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeDeleteContainerBloc>(
        create: (context) => HomeDeleteContainerBloc(HomeDeleteContainerState(
            homeDeleteContainerModelObj: HomeDeleteContainerModel()))
          ..add(HomeDeleteContainerInitialEvent()),
        child: HomeDeleteContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDeleteContainerBloc, HomeDeleteContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homeDeletePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Message:
        return AppRoutes.homeDeletePage;
      case BottomBarEnum.Calls:
        return AppRoutes.callsPage;
      case BottomBarEnum.Contacts:
        return AppRoutes.contactsPage;
      case BottomBarEnum.Settings:
        return AppRoutes.settingsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeDeletePage:
        return HomeDeletePage();
      case AppRoutes.callsPage:
        return CallsPage();
      case AppRoutes.contactsPage:
        return ContactsPage();
      case AppRoutes.settingsPage:
        return SettingsPage();
      default:
        return DefaultWidget();
    }
  }
}
