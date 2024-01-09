import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ruquaiya_s_application7/presentation/home_delete_container_screen/models/home_delete_container_model.dart';
part 'home_delete_container_event.dart';
part 'home_delete_container_state.dart';

/// A bloc that manages the state of a HomeDeleteContainer according to the event that is dispatched to it.
class HomeDeleteContainerBloc
    extends Bloc<HomeDeleteContainerEvent, HomeDeleteContainerState> {
  HomeDeleteContainerBloc(HomeDeleteContainerState initialState)
      : super(initialState) {
    on<HomeDeleteContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeDeleteContainerInitialEvent event,
    Emitter<HomeDeleteContainerState> emit,
  ) async {}
}
