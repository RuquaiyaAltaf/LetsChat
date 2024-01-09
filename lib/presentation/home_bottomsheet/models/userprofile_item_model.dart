import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.earnMoneyText,
    this.timeText,
    this.id,
  }) {
    earnMoneyText = earnMoneyText ?? "Earn Money";
    timeText = timeText ?? "2 min ago";
    id = id ?? "";
  }

  String? earnMoneyText;

  String? timeText;

  String? id;
}
