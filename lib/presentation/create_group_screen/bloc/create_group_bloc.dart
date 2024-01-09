import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/membersuihut_item_model.dart';
import 'package:ruquaiya_s_application7/presentation/create_group_screen/models/create_group_model.dart';
part 'create_group_event.dart';
part 'create_group_state.dart';

/// A bloc that manages the state of a CreateGroup according to the event that is dispatched to it.
class CreateGroupBloc extends Bloc<CreateGroupEvent, CreateGroupState> {
  CreateGroupBloc(CreateGroupState initialState) : super(initialState) {
    on<CreateGroupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateGroupInitialEvent event,
    Emitter<CreateGroupState> emit,
  ) async {
    emit(state.copyWith(
        createGroupModelObj: state.createGroupModelObj
            ?.copyWith(membersuihutItemList: fillMembersuihutItemList())));
  }

  List<MembersuihutItemModel> fillMembersuihutItemList() {
    return [MembersuihutItemModel(ellipse: ImageConstant.imgEllipse427)];
  }
}
