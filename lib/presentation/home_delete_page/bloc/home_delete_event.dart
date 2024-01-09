// ignore_for_file: must_be_immutable

part of 'home_delete_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeDelete widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeDeleteEvent extends Equatable {}

/// Event that is dispatched when the HomeDelete widget is first created.
class HomeDeleteInitialEvent extends HomeDeleteEvent {
  @override
  List<Object?> get props => [];
}
