import 'dart:core';

import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:team_manager_registration/i18n/strings.g.dart';

class CustomNotification{


static void showError({required BuildContext context,  String? description, String? tDescription,  int? durationInSeconds, Function onDismiss()? }) {
  try {
    ElegantNotification.error(
        toastDuration: Duration(seconds: 5),
        title: Text(t.misc.error),
        onDismiss: onDismiss,
        description: tDescription == null ? Text(t['errors.${description!}']): Text(tDescription)
    ).show(context);
  }catch (e){
    showError(context: context, tDescription: t.errors.tryAgain);
  }
}

static void showSuccess({required BuildContext context, required String description, int? durationInSeconds, Function onDismiss()?, Function onProgressFinished()? }) {
  try{
   ElegantNotification.success(
      toastDuration: Duration(seconds: 5),
      title:  Text(t.misc.success),
      onDismiss: onDismiss,
      onProgressFinished: onProgressFinished,
      description:  Text( description )
  ).show(context);
  }catch (e){
    showError(context: context, tDescription: t.errors.tryAgain);
  }
}

}