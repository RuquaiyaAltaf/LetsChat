import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/teamaligncomponent_item_model.dart';
import 'package:ruquaiya_s_application7/presentation/calls_page/models/calls_model.dart';
part 'calls_event.dart';
part 'calls_state.dart';

/// A bloc that manages the state of a Calls according to the event that is dispatched to it.
class CallsBloc extends Bloc<CallsEvent, CallsState> {
  CallsBloc(CallsState initialState) : super(initialState) {
    on<CallsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CallsInitialEvent event,
    Emitter<CallsState> emit,
  ) async {
    emit(state.copyWith(
        callsModelObj: state.callsModelObj?.copyWith(
      teamaligncomponentItemList: fillTeamaligncomponentItemList(),
    )));
  }

  List<TeamaligncomponentItemModel> fillTeamaligncomponentItemList() {
    return [
      TeamaligncomponentItemModel(
          teamAlignImage1: ImageConstant.imgEllipse304,
          teamAlignImage2: ImageConstant.imgEllipse386,
          teamAlignImage3: ImageConstant.imgEllipse387,
          teamAlignText: "Team Align",
          teamAlignImage4: ImageConstant.imgCall,
          teamAlignText2: "Today, 09:30 AM"),
      TeamaligncomponentItemModel(
          teamAlignText: "Jhon Abraham",
          teamAlignImage4: ImageConstant.imgCall,
          teamAlignText2: "Today, 07:30 AM"),
      TeamaligncomponentItemModel(
          teamAlignText: "Sabila Sayma",
          teamAlignImage4: ImageConstant.imgCallRed600,
          teamAlignText2: "Yesterday, 07:35 PM"),
      TeamaligncomponentItemModel(
          teamAlignText: "Alex Linderson",
          teamAlignImage4: ImageConstant.imgCallDeepPurple500,
          teamAlignText2: "Monday, 09:30 AM"),
      TeamaligncomponentItemModel(
          teamAlignText: "Jhon Abraham",
          teamAlignImage4: ImageConstant.imgCallRed600,
          teamAlignText2: "03/07/22, 07:30 AM"),
      TeamaligncomponentItemModel(
          teamAlignText: "John Borino",
          teamAlignImage4: ImageConstant.imgCallDeepPurple500,
          teamAlignText2: "Monday, 09:30 AM"),
      TeamaligncomponentItemModel(
          teamAlignText: "John Borino",
          teamAlignImage4: ImageConstant.imgCallDeepPurple500,
          teamAlignText2: "Monday, 09:30 AM"),
      TeamaligncomponentItemModel(
          teamAlignText: "John Borino",
          teamAlignImage4: ImageConstant.imgCallDeepPurple500,
          teamAlignText2: "Monday, 09:30 AM"),
      TeamaligncomponentItemModel(
          teamAlignText: "John Borino",
          teamAlignImage4: ImageConstant.imgCallDeepPurple500,
          teamAlignText2: "Monday, 09:30 AM"),
      TeamaligncomponentItemModel(
          teamAlignText: "John Borino",
          teamAlignImage4: ImageConstant.imgCallDeepPurple500,
          teamAlignText2: "Monday, 09:30 AM")
    ];
  }
}
