import '../models/accountsettings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ruquaiya_s_application7/core/app_export.dart';
import 'package:ruquaiya_s_application7/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AccountsettingsItemWidget extends StatelessWidget {
  AccountsettingsItemWidget(
    this.accountsettingsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AccountsettingsItemModel accountsettingsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          CustomIconButton(
            height: 44.adaptSize,
            width: 44.adaptSize,
            padding: EdgeInsets.all(10.h),
            child: CustomImageView(
              imagePath: accountsettingsItemModelObj?.settings,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    accountsettingsItemModelObj.accountText!,
                    style: CustomTextStyles.titleMedium16,
                  ),
                  Text(
                    accountsettingsItemModelObj.privacyText!,
                    style: CustomTextStyles.bodySmallGray600_1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
