import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/saymauihut_item_model.dart';
import 'package:ruquaiya_s_application7/presentation/home_delete_page/models/home_delete_model.dart';
part 'home_delete_event.dart';
part 'home_delete_state.dart';

/// A bloc that manages the state of a HomeDelete according to the event that is dispatched to it.
class HomeDeleteBloc extends Bloc<HomeDeleteEvent, HomeDeleteState> {
  HomeDeleteBloc(HomeDeleteState initialState) : super(initialState) {
    on<HomeDeleteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeDeleteInitialEvent event,
    Emitter<HomeDeleteState> emit,
  ) async {
    emit(state.copyWith(
        homeDeleteModelObj: state.homeDeleteModelObj?.copyWith(
      saymauihutItemList: fillSaymauihutItemList(),
    )));
  }

  List<SaymauihutItemModel> fillSaymauihutItemList() {
    return [
      SaymauihutItemModel(
          howToEarnImage: ImageConstant.imgRectangle109252x52,
          howToEarnImage2: ImageConstant.imgRectangle109352x52,
          howToEarnText: "How to Earn",
          howAreYouTodayText: "How are you today?",
          timeText: "2 min ago"),
      SaymauihutItemModel(
          howToEarnImage: ImageConstant.imgRectangle109252x52,
          howToEarnImage2: ImageConstant.imgRectangle1093,
          howToEarnText: "My Religion",
          howAreYouTodayText: "Have a good day 🌸",
          timeText: "2 min ago"),
      SaymauihutItemModel(
          howToEarnImage: ImageConstant.imgRectangle1094,
          howToEarnText: "Beauty Tips",
          howAreYouTodayText: "How are you today?",
          timeText: "2 min ago")
    ];
  }
}
