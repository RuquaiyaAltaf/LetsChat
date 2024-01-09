// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'usersuihut_item_model.dart';

/// This class defines the variables used in the [group_call_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GroupCallModel extends Equatable {
  GroupCallModel({this.usersuihutItemList = const []}) {}

  List<UsersuihutItemModel> usersuihutItemList;

  GroupCallModel copyWith({List<UsersuihutItemModel>? usersuihutItemList}) {
    return GroupCallModel(
      usersuihutItemList: usersuihutItemList ?? this.usersuihutItemList,
    );
  }

  @override
  List<Object?> get props => [usersuihutItemList];
}
