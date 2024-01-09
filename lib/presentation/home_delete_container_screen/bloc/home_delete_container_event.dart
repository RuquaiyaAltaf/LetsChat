// ignore_for_file: must_be_immutable

part of 'home_delete_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeDeleteContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeDeleteContainerEvent extends Equatable {}

/// Event that is dispatched when the HomeDeleteContainer widget is first created.
class HomeDeleteContainerInitialEvent extends HomeDeleteContainerEvent {
  @override
  List<Object?> get props => [];
}
