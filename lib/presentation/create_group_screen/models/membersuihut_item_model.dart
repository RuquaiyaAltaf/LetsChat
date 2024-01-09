import '../../../core/app_export.dart';

/// This class is used in the [membersuihut_item_widget] screen.
class MembersuihutItemModel {
  MembersuihutItemModel({
    this.ellipse,
    this.id,
  }) {
    ellipse = ellipse ?? ImageConstant.imgEllipse427;
    id = id ?? "";
  }

  String? ellipse;

  String? id;
}
