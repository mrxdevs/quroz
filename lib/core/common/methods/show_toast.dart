import 'package:motion_toast/motion_toast.dart';
import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';

showSuccessToast(BuildContext context, String message, String? desc) {
  MotionToast.success(
    title: Text(message),
    barrierColor: AppColors.primary,

    description: Text(desc ?? ""),
  ).show(context);
}

showWarningToast(BuildContext context, String message, String? desc) {
  MotionToast.warning(
    title: Text(message),
    description: Text(desc ?? ""),
  ).show(context);
}

showErrorToast(BuildContext context, String message, String desc) {
  MotionToast.error(
    title: Text(message),
    description: Text(desc),
  ).show(context);
}

showInfoToast(BuildContext context, String message, String? desc) {
  MotionToast.info(
    title: Text(message),
    description: Text(desc ?? ""),
  ).show(context);
}
