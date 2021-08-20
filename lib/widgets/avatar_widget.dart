import 'package:flutter/material.dart';
import 'package:superstarteam/utils/utils.dart';

class AvatarWidget extends StatelessWidget {
  final Widget child;
  final double statusRight;
  final double statusBottom;
  final double imageSize;
  final double allSize;
  final void Function()? onTap;

  const AvatarWidget({
    required this.child,
    required this.allSize,
    required this.imageSize,
    required this.statusBottom,
    required this.statusRight,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: allSize,
      width: allSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: allSize,
            width: allSize,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            behavior: HitTestBehavior.opaque,
            child: Container(
              height: imageSize,
              width: imageSize,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                color: AppColors.yellowFCD1A3,
                shape: BoxShape.circle,
              ),
              child: child,
            ),
          ),
          Positioned(
            bottom: statusBottom,
            right: statusRight,
            child: Container(
              height: 13.r,
              width: 13.r,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.yellowFCD1A3,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2.r,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
