import 'package:flutter/foundation.dart';
import 'package:jhanas/helpers/toast.dart';

void errorMessage(String message, {String? exception, bool alert = true}) {
  if (kDebugMode) {
    print('Error: $message');
    if (exception != null) {
      print(exception);
    }
  }

  if (alert) {
    toastError(message);
  }
}
