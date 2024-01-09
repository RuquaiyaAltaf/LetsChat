// ignore_for_file: must_be_immutable

part of 'calls_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Calls widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CallsEvent extends Equatable {}

/// Event that is dispatched when the Calls widget is first created.
class CallsInitialEvent extends CallsEvent {
  @override
  List<Object?> get props => [];
}
