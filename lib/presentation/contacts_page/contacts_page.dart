import '../contacts_page/widgets/userprofilesection_item_widget.dart';
import 'bloc/contacts_bloc.dart';
import 'models/contacts_model.dart';
import 'models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ContactsBloc>(
      create: (context) => ContactsBloc(ContactsState(
        contactsModelObj: ContactsModel(),
      ))
        ..add(ContactsInitialEvent()),
      child: ContactsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocProvider<ContactsBloc>(
        create: (context) => ContactsBloc(ContactsState(
          contactsModelObj: ContactsModel(),
    ))
      ..add(ContactsInitialEvent()),
        child:         SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 91.v),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 14.v,
                ),
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
                        height: 3.v,
                        width: 30.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray300,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Text(
                      "lbl_my_contact".tr,
                      style: CustomTextStyles.titleMedium16,
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      height: 543.v,
                      width: 206.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 31.h,
                                bottom: 6.v,
                              ),
                              child: Text(
                                "msg_life_is_beautiful".tr,
                                style: CustomTextStyles.labelLargeGray600,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 543.v,
                              width: 206.h,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse30452x52,
                                    height: 52.adaptSize,
                                    width: 52.adaptSize,
                                    radius: BorderRadius.circular(
                                      26.h,
                                    ),
                                    alignment: Alignment.bottomLeft,
                                  ),
                                  _buildUserProfileSection(context),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
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
  Widget _buildUserProfileSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 118.v),
        child: BlocSelector<ContactsBloc, ContactsState, ContactsModel?>(
          selector: (state) => state.contactsModelObj,
          builder: (context, contactsModelObj) {
            return GroupedListView<UserprofilesectionItemModel, String>(
              shrinkWrap: true,
              stickyHeaderBackgroundColor: Colors.transparent,
              elements: contactsModelObj?.userprofilesectionItemList ?? [],
              groupBy: (element) => element.groupBy!,
              sort: false,
              groupSeparatorBuilder: (String value) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: 26.v,
                    bottom: 15.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        value,
                        style: CustomTextStyles.titleMediumBold.copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemBuilder: (context, model) {
                return UserprofilesectionItemWidget(
                  model,
                );
              },
              separator: SizedBox(
                height: 20.v,
              ),
            );
          },
        ),
      ),
    );
  }
}
