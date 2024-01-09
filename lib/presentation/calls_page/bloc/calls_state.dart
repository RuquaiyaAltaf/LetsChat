// ignore_for_file: must_be_immutable

part of 'calls_bloc.dart';

/// Represents the state of Calls in the application.
class CallsState extends Equatable {
  CallsState({this.callsModelObj});

  CallsModel? callsModelObj;

  @override
  List<Object?> get props => [
        callsModelObj,
      ];
  CallsState copyWith({CallsModel? callsModelObj}) {
    return CallsState(
      callsModelObj: callsModelObj ?? this.callsModelObj,
    );
  }
}
