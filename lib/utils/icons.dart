import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:superstarteam/utils/utils.dart';

class AppImages {
  const AppImages._();
  static Widget backgroundImage({required BuildContext context}) {
    return Image.asset(
      'assets/background.png',
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
    );
  }

  static Widget mainTop() {
    return Image.asset(
      'assets/main_top.png',
      fit: BoxFit.cover,
    );
  }
}

class AppIcons {
  const AppIcons._();

  static Widget logo({double? width, double? height}) {
    return Image.asset(
      'assets/icons/logo.png',
      width: width ?? 163.w,
      height: height ?? 188.h,
      fit: BoxFit.contain,
    );
  }

  static Widget logoText() {
    return Image.asset(
      'assets/icons/logo_text.png',
      width: 180.w,
      height: 30.h,
      fit: BoxFit.contain,
    );
  }

  static Widget arrowLeft() {
    return Container(
      width: 25.w,
      height: 25.h,
      alignment: Alignment.centerLeft,
      child: SvgPicture.asset(
        'assets/icons/arrow_left.svg',
        width: 12.w,
        height: 20.h,
        color: AppColors.yellowFCD1A3,
        fit: BoxFit.none,
      ),
    );
  }

  static Widget chat() {
    return Image.asset(
      'assets/icons/chats.png',
      width: 25.h,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget news() {
    return Image.asset(
      'assets/icons/news.png',
      width: 25.h,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget company() {
    return Image.asset(
      'assets/icons/about_company.png',
      width: 25.h,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget production() {
    return Image.asset(
      'assets/icons/production.png',
      width: 25.h,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget documents() {
    return Image.asset(
      'assets/icons/documents.png',
      width: 25.h,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget eye() {
    return SvgPicture.asset(
      'assets/icons/eye.svg',
      width: 25.w,
      height: 25.h,
      fit: BoxFit.contain,
      color: AppColors.yellowFCD1A3,
    );
  }

  static Widget eyeSlash() {
    return SvgPicture.asset(
      'assets/icons/eye_slash.svg',
      width: 25.w,
      height: 25.h,
      fit: BoxFit.contain,
      color: AppColors.yellowFCD1A3,
    );
  }

  static Widget menu() {
    return SvgPicture.asset(
      'assets/icons/menu.svg',
      width: 25.w,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget pdf() {
    return SvgPicture.asset(
      'assets/icons/pdf.svg',
      width: 25.w,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget social() {
    return Image.asset(
      'assets/icons/socials.png',
      width: 25.h,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget star() {
    return Image.asset(
      'assets/icons/star.png',
      width: 25.h,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget translations() {
    return Image.asset(
      'assets/icons/translation.png',
      width: 25.h,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }

  static Widget video() {
    return Image.asset(
      'assets/icons/video.png',
      width: 25.h,
      height: 25.h,
      fit: BoxFit.contain,
    );
  }
}
