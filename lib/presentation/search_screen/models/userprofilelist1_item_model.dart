import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {
  Userprofilelist1ItemModel({
    this.userImage1,
    this.userImage2,
    this.userImage3,
    this.dynamicProperty2,
    this.dynamicProperty3,
    this.id,
  }) {
    userImage1 = userImage1 ?? ImageConstant.imgEllipse3041;
    userImage2 = userImage2 ?? ImageConstant.imgEllipse38652x52;
    userImage3 = userImage3 ?? ImageConstant.imgEllipse38752x52;
    dynamicProperty2 = dynamicProperty2 ?? "Team Align-Practise";
    dynamicProperty3 = dynamicProperty3 ?? "4 participants";
    id = id ?? "";
  }

  String? userImage1;

  String? userImage2;

  String? userImage3;

  String? dynamicProperty2;

  String? dynamicProperty3;

  String? id;
}
