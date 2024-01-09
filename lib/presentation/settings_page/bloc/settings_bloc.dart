import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/accountsettings_item_model.dart';
import 'package:ruquaiya_s_application7/presentation/settings_page/models/settings_model.dart';
part 'settings_event.dart';
part 'settings_state.dart';

/// A bloc that manages the state of a Settings according to the event that is dispatched to it.
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(SettingsState initialState) : super(initialState) {
    on<SettingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsInitialEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(
        settingsModelObj: state.settingsModelObj?.copyWith(
      accountsettingsItemList: fillAccountsettingsItemList(),
    )));
  }

  List<AccountsettingsItemModel> fillAccountsettingsItemList() {
    return [
      AccountsettingsItemModel(
          settings: ImageConstant.imgSettings,
          accountText: "Account",
          privacyText: "Privacy, security, change number"),
      AccountsettingsItemModel(
          settings: ImageConstant.imgSettingsGray600,
          accountText: "Chat",
          privacyText: "Chat history, theme, wallpapers"),
      AccountsettingsItemModel(
          settings: ImageConstant.imgNotification,
          accountText: "Notifications",
          privacyText: "Messages, group and others"),
      AccountsettingsItemModel(
          settings: ImageConstant.imgHelp,
          accountText: "Help",
          privacyText: "Help center, contact us, privacy policy"),
      AccountsettingsItemModel(
          settings: ImageConstant.imgData,
          accountText: "Storage and data",
          privacyText: "Network usage, storage usage"),
      AccountsettingsItemModel(settings: ImageConstant.imgUsers)
    ];
  }
}
