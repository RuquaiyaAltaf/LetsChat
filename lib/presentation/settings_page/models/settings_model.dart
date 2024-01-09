// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'accountsettings_item_model.dart';

/// This class defines the variables used in the [settings_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingsModel extends Equatable {
  SettingsModel({this.accountsettingsItemList = const []}) {}

  List<AccountsettingsItemModel> accountsettingsItemList;

  SettingsModel copyWith(
      {List<AccountsettingsItemModel>? accountsettingsItemList}) {
    return SettingsModel(
      accountsettingsItemList:
          accountsettingsItemList ?? this.accountsettingsItemList,
    );
  }

  @override
  List<Object?> get props => [accountsettingsItemList];
}
