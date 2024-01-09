// ignore_for_file: must_be_immutable

part of 'group_call_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GroupCall widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GroupCallEvent extends Equatable {}

/// Event that is dispatched when the GroupCall widget is first created.
class GroupCallInitialEvent extends GroupCallEvent {
  @override
  List<Object?> get props => [];
}
