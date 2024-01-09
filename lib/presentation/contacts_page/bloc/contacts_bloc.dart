import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilesection_item_model.dart';
import 'package:ruquaiya_s_application7/presentation/contacts_page/models/contacts_model.dart';
part 'contacts_event.dart';
part 'contacts_state.dart';

/// A bloc that manages the state of a Contacts according to the event that is dispatched to it.
class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc(ContactsState initialState) : super(initialState) {
    on<ContactsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ContactsInitialEvent event,
    Emitter<ContactsState> emit,
  ) async {
    emit(state.copyWith(
        contactsModelObj: state.contactsModelObj?.copyWith(
      userprofilesectionItemList: fillUserprofilesectionItemList(),
    )));
  }

  List<UserprofilesectionItemModel> fillUserprofilesectionItemList() {
    return [
      UserprofilesectionItemModel(groupBy: "A"),
      UserprofilesectionItemModel(groupBy: "A"),
      UserprofilesectionItemModel(groupBy: "B"),
      UserprofilesectionItemModel(groupBy: "B"),
      UserprofilesectionItemModel(groupBy: "B")
    ];
  }
}
