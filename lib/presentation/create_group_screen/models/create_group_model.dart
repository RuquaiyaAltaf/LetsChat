// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'membersuihut_item_model.dart';

/// This class defines the variables used in the [create_group_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreateGroupModel extends Equatable {
  CreateGroupModel({this.membersuihutItemList = const []}) {}

  List<MembersuihutItemModel> membersuihutItemList;

  CreateGroupModel copyWith(
      {List<MembersuihutItemModel>? membersuihutItemList}) {
    return CreateGroupModel(
      membersuihutItemList: membersuihutItemList ?? this.membersuihutItemList,
    );
  }

  @override
  List<Object?> get props => [membersuihutItemList];
}
