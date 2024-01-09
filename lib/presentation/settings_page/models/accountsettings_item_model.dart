import '../../../core/app_export.dart';

/// This class is used in the [accountsettings_item_widget] screen.
class AccountsettingsItemModel {
  AccountsettingsItemModel({
    this.settings,
    this.accountText,
    this.privacyText,
    this.id,
  }) {
    settings = settings ?? ImageConstant.imgSettings;
    accountText = accountText ?? "Account";
    privacyText = privacyText ?? "Privacy, security, change number";
    id = id ?? "";
  }

  String? settings;

  String? accountText;

  String? privacyText;

  String? id;
}
