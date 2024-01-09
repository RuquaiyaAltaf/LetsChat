// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'saymauihut_item_model.dart';

/// This class defines the variables used in the [home_delete_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeDeleteModel extends Equatable {
  HomeDeleteModel({this.saymauihutItemList = const []}) {}

  List<SaymauihutItemModel> saymauihutItemList;

  HomeDeleteModel copyWith({List<SaymauihutItemModel>? saymauihutItemList}) {
    return HomeDeleteModel(
      saymauihutItemList: saymauihutItemList ?? this.saymauihutItemList,
    );
  }

  @override
  List<Object?> get props => [saymauihutItemList];
}
