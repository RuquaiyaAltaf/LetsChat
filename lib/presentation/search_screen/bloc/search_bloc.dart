import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:ruquaiya_s_application7/presentation/search_screen/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          userImage: ImageConstant.imgRectangle109252x52,
          userName: "Adil Adnan",
          userTagline: "Be your own hero 💪"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgRectangle1150,
          userName: "Bristy Haque",
          userTagline: "Keep working ✍"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgEllipse308,
          userName: "John Borino",
          userTagline: "Make yourself proud 😍")
    ];
  }

  List<Userprofilelist1ItemModel> fillUserprofilelist1ItemList() {
    return [
      Userprofilelist1ItemModel(
          userImage1: ImageConstant.imgEllipse3041,
          userImage2: ImageConstant.imgEllipse38652x52,
          userImage3: ImageConstant.imgEllipse38752x52,
          dynamicProperty2: "Team Align-Practise",
          dynamicProperty3: "4 participants"),
      Userprofilelist1ItemModel(
          userImage1: ImageConstant.imgEllipse304,
          userImage2: ImageConstant.imgEllipse386,
          userImage3: ImageConstant.imgEllipse387,
          dynamicProperty2: "Team Align",
          dynamicProperty3: "8 participants")
    ];
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
      userprofilelistItemList: fillUserprofilelistItemList(),
      userprofilelist1ItemList: fillUserprofilelist1ItemList(),
    )));
  }
}
