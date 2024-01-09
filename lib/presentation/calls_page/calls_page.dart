import '../calls_page/widgets/teamaligncomponent_item_widget.dart';
import 'bloc/calls_bloc.dart';
import 'models/calls_model.dart';
import 'models/teamaligncomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CallsPage extends StatelessWidget {
  const CallsPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CallsBloc>(
      create: (context) => CallsBloc(CallsState(
        callsModelObj: CallsModel(),
      ))
        ..add(CallsInitialEvent()),
      child: CallsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: BlocProvider<CallsBloc>(
            create: (context) => CallsBloc(CallsState(
              callsModelObj: CallsModel(),
            ))
              ..add(CallsInitialEvent()),
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0.14),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL40,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 0.3,
                              width: 30.h,
                              decoration: BoxDecoration(
                                color: appTheme.gray300,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 0.30),
                          Center(child: Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text(
                              "lbl_recent".tr,
                              style: CustomTextStyles.titleMedium16,
                            ),
                          )),

                          SizedBox(height: 0.15),
                          _buildTeamAlignComponent(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  /// Section Widget
  Widget _buildTeamAlignComponent(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: BlocSelector<CallsBloc, CallsState, CallsModel?>(
          selector: (state) => state.callsModelObj,
          builder: (context, callsModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.10),
                  child: SizedBox(
                    height: 20,
                    width: 280.h,
                    child: Divider(
                      height: 0.3,
                      thickness: 0.3,
                      color: appTheme.gray10004,
                    ),
                  ),
                );
              },
              itemCount: callsModelObj?.teamaligncomponentItemList.length ?? 0,
              itemBuilder: (context, index) {
                TeamaligncomponentItemModel model =
                    callsModelObj?.teamaligncomponentItemList[index] ??
                        TeamaligncomponentItemModel();
                return TeamaligncomponentItemWidget(
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
