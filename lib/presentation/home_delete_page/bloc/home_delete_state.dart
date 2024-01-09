// ignore_for_file: must_be_immutable

part of 'home_delete_bloc.dart';

/// Represents the state of HomeDelete in the application.
class HomeDeleteState extends Equatable {
  HomeDeleteState({this.homeDeleteModelObj});

  HomeDeleteModel? homeDeleteModelObj;

  @override
  List<Object?> get props => [
        homeDeleteModelObj,
      ];
  HomeDeleteState copyWith({HomeDeleteModel? homeDeleteModelObj}) {
    return HomeDeleteState(
      homeDeleteModelObj: homeDeleteModelObj ?? this.homeDeleteModelObj,
    );
  }
}
