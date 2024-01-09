import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:ruquaiya_s_application7/presentation/user_profile_bottomsheet/models/user_profile_model.dart';
part 'user_profile_event.dart';
part 'user_profile_state.dart';

/// A bloc that manages the state of a UserProfile according to the event that is dispatched to it.
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc(UserProfileState initialState) : super(initialState) {
    on<UserProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserProfileInitialEvent event,
    Emitter<UserProfileState> emit,
  ) async {
    emit(state.copyWith(
        userProfileModelObj: state.userProfileModelObj?.copyWith(
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(rectangle: ImageConstant.imgRectangle1154),
      Userprofile1ItemModel(rectangle: ImageConstant.imgRectangle1155)
    ];
  }
}
