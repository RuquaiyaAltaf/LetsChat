// ignore_for_file: must_be_immutable

part of 'group_call_bloc.dart';

/// Represents the state of GroupCall in the application.
class GroupCallState extends Equatable {
  GroupCallState({this.groupCallModelObj});

  GroupCallModel? groupCallModelObj;

  @override
  List<Object?> get props => [
        groupCallModelObj,
      ];
  GroupCallState copyWith({GroupCallModel? groupCallModelObj}) {
    return GroupCallState(
      groupCallModelObj: groupCallModelObj ?? this.groupCallModelObj,
    );
  }
}
