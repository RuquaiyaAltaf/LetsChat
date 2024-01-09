import '../../../core/app_export.dart';

/// This class is used in the [usersuihut_item_widget] screen.
class UsersuihutItemModel {
  UsersuihutItemModel({
    this.circleImage,
    this.music,
    this.id,
  }) {
    circleImage = circleImage ?? ImageConstant.imgEllipse411;
    music = music ?? ImageConstant.imgMusic;
    id = id ?? "";
  }

  String? circleImage;

  String? music;

  String? id;
}
