import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:superstarteam/utils/utils.dart';

class Buttons {
  static RichText licenseButton() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppTypography.font12.copyWith(height: 1.5),
        children: [
          const TextSpan(
            text: 'Отправляя форму, вы принимаете ',
          ),
          TextSpan(
            text: 'пользовательское соглашение',
            style: const TextStyle(color: AppColors.yellowFCD1A3),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(
            text: ' и ',
          ),
          TextSpan(
            text: 'политику конфиденциальности',
            style: const TextStyle(color: AppColors.yellowFCD1A3),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final double? width;
  final bool isActive;

  const DefaultButton({
    required this.text,
    this.onTap,
    this.width,
    this.isActive = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onTap : null,
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: 48.h,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: isActive ? AppColors.gradient : null ,
          borderRadius: BorderRadius.circular(15),
          color: isActive ? null : Colors.white.withOpacity(0.2),
        ),
        child: Text(
          text,
          style: AppTypography.font16.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
