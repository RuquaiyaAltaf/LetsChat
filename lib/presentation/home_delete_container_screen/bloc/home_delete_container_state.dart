// ignore_for_file: must_be_immutable

part of 'home_delete_container_bloc.dart';

/// Represents the state of HomeDeleteContainer in the application.
class HomeDeleteContainerState extends Equatable {
  HomeDeleteContainerState({this.homeDeleteContainerModelObj});

  HomeDeleteContainerModel? homeDeleteContainerModelObj;

  @override
  List<Object?> get props => [
        homeDeleteContainerModelObj,
      ];
  HomeDeleteContainerState copyWith(
      {HomeDeleteContainerModel? homeDeleteContainerModelObj}) {
    return HomeDeleteContainerState(
      homeDeleteContainerModelObj:
          homeDeleteContainerModelObj ?? this.homeDeleteContainerModelObj,
    );
  }
}
