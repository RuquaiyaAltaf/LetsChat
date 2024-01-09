import '../search_screen/widgets/userprofilelist1_item_widget.dart';
import '../search_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/appbar_title_searchview.dart';
import 'package:ruquaiya_s_application7/widgets/app_bar/custom_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(SearchState(
        searchModelObj: SearchModel(),
      ))
        ..add(SearchInitialEvent()),
      child: SearchScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              colors: [
                appTheme.red800Db,
                appTheme.gray900,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 22.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_people".tr,
                  style: CustomTextStyles.titleMedium16,
                ),
                SizedBox(height: 13.v),
                _buildUserProfileList(context),
                SizedBox(height: 28.v),
                Text(
                  "lbl_group_chat".tr,
                  style: CustomTextStyles.titleMedium16,
                ),
                SizedBox(height: 13.v),
                _buildUserProfileList1(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: BlocSelector<SearchBloc, SearchState, TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            hintText: "lbl_people".tr,
            controller: searchController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 124.h),
        child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
          selector: (state) => state.searchModelObj,
          builder: (context, searchModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 30.v,
                );
              },
              itemCount: searchModelObj?.userprofilelistItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserprofilelistItemModel model =
                    searchModelObj?.userprofilelistItemList[index] ??
                        UserprofilelistItemModel();
                return UserprofilelistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 76.h),
      child: BlocSelector<SearchBloc, SearchState, SearchModel?>(
        selector: (state) => state.searchModelObj,
        builder: (context, searchModelObj) {
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
            itemCount: searchModelObj?.userprofilelist1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofilelist1ItemModel model =
                  searchModelObj?.userprofilelist1ItemList[index] ??
                      Userprofilelist1ItemModel();
              return Userprofilelist1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
