import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/usersuihut_item_model.dart';
import 'package:ruquaiya_s_application7/presentation/group_call_screen/models/group_call_model.dart';
part 'group_call_event.dart';
part 'group_call_state.dart';

/// A bloc that manages the state of a GroupCall according to the event that is dispatched to it.
class GroupCallBloc extends Bloc<GroupCallEvent, GroupCallState> {
  GroupCallBloc(GroupCallState initialState) : super(initialState) {
    on<GroupCallInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GroupCallInitialEvent event,
    Emitter<GroupCallState> emit,
  ) async {
    emit(state.copyWith(
        groupCallModelObj: state.groupCallModelObj?.copyWith(
      usersuihutItemList: fillUsersuihutItemList(),
    )));
  }

  List<UsersuihutItemModel> fillUsersuihutItemList() {
    return [
      UsersuihutItemModel(
          circleImage: ImageConstant.imgEllipse411,
          music: ImageConstant.imgMusic),
      UsersuihutItemModel(
          circleImage: ImageConstant.imgEllipse412,
          music: ImageConstant.imgMenu),
      UsersuihutItemModel(
          circleImage: ImageConstant.imgEllipse413,
          music: ImageConstant.imgMusic),
      UsersuihutItemModel(
          circleImage: ImageConstant.imgEllipse414,
          music: ImageConstant.imgMusic),
      UsersuihutItemModel(
          circleImage: ImageConstant.imgEllipse415,
          music: ImageConstant.imgMusic)
    ];
  }
}
