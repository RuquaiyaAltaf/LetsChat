// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'teamaligncomponent_item_model.dart';

/// This class defines the variables used in the [calls_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CallsModel extends Equatable {
  CallsModel({this.teamaligncomponentItemList = const []}) {}

  List<TeamaligncomponentItemModel> teamaligncomponentItemList;

  CallsModel copyWith(
      {List<TeamaligncomponentItemModel>? teamaligncomponentItemList}) {
    return CallsModel(
      teamaligncomponentItemList:
          teamaligncomponentItemList ?? this.teamaligncomponentItemList,
    );
  }

  @override
  List<Object?> get props => [teamaligncomponentItemList];
}
