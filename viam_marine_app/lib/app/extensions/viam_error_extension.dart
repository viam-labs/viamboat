import 'package:flutter/material.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/generated/l10n.dart';

extension ErrorMessage on ViamError? {
  String getErrorMessage(BuildContext context) {
    late String errorMessage;

    switch (this) {
      case ViamError.boatNameTaken:
        errorMessage = Strings.of(context).boat_name_taken_error_message;
        break;
      case ViamError.cameraPermissionDenied:
        errorMessage = Strings.of(context).scan_qr_camera_permissions_denied_msg;
        break;
      case ViamError.scanQrError:
        errorMessage = Strings.of(context).scan_qr_page_error_msg;
        break;
      default:
        errorMessage = '';
        break;
    }

    return errorMessage;
  }
}
