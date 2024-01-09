import '../../../core/app_export.dart';

/// This class is used in the [teamaligncomponent_item_widget] screen.
class TeamaligncomponentItemModel {
  TeamaligncomponentItemModel({
    this.teamAlignImage1,
    this.teamAlignImage2,
    this.teamAlignImage3,
    this.teamAlignText,
    this.teamAlignImage4,
    this.teamAlignText2,
    this.id,
  }) {
    teamAlignImage1 = teamAlignImage1 ?? ImageConstant.imgEllipse304;
    teamAlignImage2 = teamAlignImage2 ?? ImageConstant.imgEllipse386;
    teamAlignImage3 = teamAlignImage3 ?? ImageConstant.imgEllipse387;
    teamAlignText = teamAlignText ?? "Team Align";
    teamAlignImage4 = teamAlignImage4 ?? ImageConstant.imgCall;
    teamAlignText2 = teamAlignText2 ?? "Today, 09:30 AM";
    id = id ?? "";
  }

  String? teamAlignImage1;

  String? teamAlignImage2;

  String? teamAlignImage3;

  String? teamAlignText;

  String? teamAlignImage4;

  String? teamAlignText2;

  String? id;
}
