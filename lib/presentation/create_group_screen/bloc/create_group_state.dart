// ignore_for_file: must_be_immutable

part of 'create_group_bloc.dart';

/// Represents the state of CreateGroup in the application.
class CreateGroupState extends Equatable {
  CreateGroupState({this.createGroupModelObj});

  CreateGroupModel? createGroupModelObj;

  @override
  List<Object?> get props => [
        createGroupModelObj,
      ];
  CreateGroupState copyWith({CreateGroupModel? createGroupModelObj}) {
    return CreateGroupState(
      createGroupModelObj: createGroupModelObj ?? this.createGroupModelObj,
    );
  }
}
