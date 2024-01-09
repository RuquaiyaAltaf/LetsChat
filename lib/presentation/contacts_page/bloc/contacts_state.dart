// ignore_for_file: must_be_immutable

part of 'contacts_bloc.dart';

/// Represents the state of Contacts in the application.
class ContactsState extends Equatable {
  ContactsState({this.contactsModelObj});

  ContactsModel? contactsModelObj;

  @override
  List<Object?> get props => [
        contactsModelObj,
      ];
  ContactsState copyWith({ContactsModel? contactsModelObj}) {
    return ContactsState(
      contactsModelObj: contactsModelObj ?? this.contactsModelObj,
    );
  }
}
