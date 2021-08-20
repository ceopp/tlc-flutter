import 'package:flutter/material.dart';
import 'package:superstarteam/utils/utils.dart';
import 'package:superstarteam/widgets/widgets.dart';

class AppBarCustom extends StatelessWidget {
  final bool isBackArrow;

  const AppBarCustom({
    this.isBackArrow = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 20.w, top: 54.h)),
        isBackArrow
            ? GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                behavior: HitTestBehavior.opaque,
                child: AppIcons.arrowLeft(),
              )
            : SizedBox(width: 25.w),
        const Spacer(),
        AppIcons.logoText(),
        const Spacer(),
        SizedBox(width: 25.w),
        Padding(padding: EdgeInsets.only(left: 20.w)),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60.h,
          ),
          Text(
            title,
            style: AppTypography.font18.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.yellowFCD1A3,
            ),
          ),
          Positioned(
            left: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                behavior: HitTestBehavior.opaque,
                child: AppIcons.arrowLeft(),
              ),
            ),
          ),
          Positioned(
            right: 20.w,
            child: AppBarTrailing(),
          ),
        ],
      ),
    );
  }
}
