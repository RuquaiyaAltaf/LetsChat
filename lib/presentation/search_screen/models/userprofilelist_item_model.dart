import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.userImage,
    this.userName,
    this.userTagline,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle109252x52;
    userName = userName ?? "Adil Adnan";
    userTagline = userTagline ?? "Be your own hero 💪";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? userTagline;

  String? id;
}
