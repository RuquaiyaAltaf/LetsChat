// ignore_for_file: must_be_immutable

part of 'group_message_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GroupMessage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GroupMessageEvent extends Equatable {}

/// Event that is dispatched when the GroupMessage widget is first created.
class GroupMessageInitialEvent extends GroupMessageEvent {
  @override
  List<Object?> get props => [];
}
