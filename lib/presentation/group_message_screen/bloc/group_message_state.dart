// ignore_for_file: must_be_immutable

part of 'group_message_bloc.dart';

/// Represents the state of GroupMessage in the application.
class GroupMessageState extends Equatable {
  GroupMessageState({
    this.messageController,
    this.groupMessageModelObj,
  });

  TextEditingController? messageController;

  GroupMessageModel? groupMessageModelObj;

  @override
  List<Object?> get props => [
        messageController,
        groupMessageModelObj,
      ];
  GroupMessageState copyWith({
    TextEditingController? messageController,
    GroupMessageModel? groupMessageModelObj,
  }) {
    return GroupMessageState(
      messageController: messageController ?? this.messageController,
      groupMessageModelObj: groupMessageModelObj ?? this.groupMessageModelObj,
    );
  }
}
