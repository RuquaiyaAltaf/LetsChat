import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ruquaiya_s_application7/presentation/group_message_screen/models/group_message_model.dart';
part 'group_message_event.dart';
part 'group_message_state.dart';

/// A bloc that manages the state of a GroupMessage according to the event that is dispatched to it.
class GroupMessageBloc extends Bloc<GroupMessageEvent, GroupMessageState> {
  GroupMessageBloc(GroupMessageState initialState) : super(initialState) {
    on<GroupMessageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GroupMessageInitialEvent event,
    Emitter<GroupMessageState> emit,
  ) async {
    emit(state.copyWith(messageController: TextEditingController()));
  }
}
