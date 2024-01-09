import '../../../core/app_export.dart';

/// This class is used in the [saymauihut_item_widget] screen.
class SaymauihutItemModel {
  SaymauihutItemModel({
    this.howToEarnImage,
    this.howToEarnImage2,
    this.howToEarnText,
    this.howAreYouTodayText,
    this.timeText,
    this.id,
  }) {
    howToEarnImage = howToEarnImage ?? ImageConstant.imgRectangle109252x52;
    howToEarnImage2 = howToEarnImage2 ?? ImageConstant.imgRectangle109352x52;
    howToEarnText = howToEarnText ?? "How to Earn";
    howAreYouTodayText = howAreYouTodayText ?? "How are you today?";
    timeText = timeText ?? "2 min ago";
    id = id ?? "";
  }

  String? howToEarnImage;

  String? howToEarnImage2;

  String? howToEarnText;

  String? howAreYouTodayText;

  String? timeText;

  String? id;
}
