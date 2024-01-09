// ignore_for_file: must_be_immutable

part of 'create_group_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateGroup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateGroupEvent extends Equatable {}

/// Event that is dispatched when the CreateGroup widget is first created.
class CreateGroupInitialEvent extends CreateGroupEvent {
  @override
  List<Object?> get props => [];
}
