// ignore_for_file: must_be_immutable

part of 'contacts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Contacts widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ContactsEvent extends Equatable {}

/// Event that is dispatched when the Contacts widget is first created.
class ContactsInitialEvent extends ContactsEvent {
  @override
  List<Object?> get props => [];
}
