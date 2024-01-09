// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'userprofilesection_item_model.dart';

/// This class defines the variables used in the [contacts_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ContactsModel extends Equatable {
  ContactsModel({this.userprofilesectionItemList = const []}) {}

  List<UserprofilesectionItemModel> userprofilesectionItemList;

  ContactsModel copyWith(
      {List<UserprofilesectionItemModel>? userprofilesectionItemList}) {
    return ContactsModel(
      userprofilesectionItemList:
          userprofilesectionItemList ?? this.userprofilesectionItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilesectionItemList];
}
