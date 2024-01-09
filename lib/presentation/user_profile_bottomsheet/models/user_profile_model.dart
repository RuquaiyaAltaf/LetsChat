// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [user_profile_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class UserProfileModel extends Equatable {
  UserProfileModel({this.userprofile1ItemList = const []}) {}

  List<Userprofile1ItemModel> userprofile1ItemList;

  UserProfileModel copyWith(
      {List<Userprofile1ItemModel>? userprofile1ItemList}) {
    return UserProfileModel(
      userprofile1ItemList: userprofile1ItemList ?? this.userprofile1ItemList,
    );
  }

  @override
  List<Object?> get props => [userprofile1ItemList];
}
