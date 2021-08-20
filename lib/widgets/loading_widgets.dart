import 'package:flutter/material.dart';
import 'package:superstarteam/utils/utils.dart';

class LoadingWidgets {
  static Widget loading({
    Color? color = AppColors.yellowFCD1A3,
    double? width,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 4.h,
      ),
      child: const CircularProgressIndicator(
        backgroundColor: AppColors.yellowFCD1A3,
        color: AppColors.yellowFCD1A3,
        // size: width ?? 40.w,
      ),
    );
  }

  static Widget loadingCenter({Color? color}) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          loading(color: color),
          Expanded(child: Row()),
        ],
      ),
    );
  }
}
