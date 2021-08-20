import 'package:flutter/material.dart';
import 'package:superstarteam/utils/utils.dart';

class AppBarTrailing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 30.w,
        height: 30.w,
        decoration: BoxDecoration(
          gradient: AppColors.gradient,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [AppColors.defaultShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _Item(),
                SizedBox(width: 3.w),
                _Item(),
              ],
            ),
            SizedBox(height: 3.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _Item(),
                SizedBox(width: 3.w),
                _Item(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6.w,
      height: 6.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white,
          width: 1.5,
        ),
      ),
    );
  }
}
