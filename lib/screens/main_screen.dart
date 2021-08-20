import 'package:flutter/material.dart';
import 'package:superstarteam/screens/about_company.dart';
import 'package:superstarteam/utils/utils.dart';
import 'package:superstarteam/widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBackgroundWrapper(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SafeArea(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 30.h,
                  ),
                  AppIcons.logoText(),
                  Positioned(
                    right: 0,
                    child: AppBarTrailing(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.h),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 9.h),
                    child: AppImages.mainTop(),
                  ),
                  _Button(
                    title: 'Лидерство',
                    icon: AppIcons.star(),
                  ),
                  _Button(
                    title: 'О компании',
                    nextScreen: AboutCompany(),
                    icon: AppIcons.company(),
                  ),
                  _Button(
                    title: 'Продукция',
                    icon: AppIcons.production(),
                  ),
                  _Button(
                    title: 'Документы',
                    icon: AppIcons.documents(),
                  ),
                  _Button(
                    title: 'Видео',
                    icon: AppIcons.video(),
                  ),
                  _Button(
                    title: 'Трансляции',
                    icon: AppIcons.translations(),
                  ),
                  _Button(
                    title: 'Чаты',
                    icon: AppIcons.chat(),
                  ),
                  _Button(
                    title: 'Новости',
                    icon: AppIcons.news(),
                  ),
                  _Button(
                    title: 'Социальные сети',
                    icon: AppIcons.social(),
                  ),
                ],
              ),
            ),
            SafeArea(
              top: false,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 13.h),
                child: Text(
                  'Если у вас возникли вопросы - обратитесь\nк человеку, от которого вы узнали о TLC',
                  style: AppTypography.font14.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final String title;
  final Widget icon;
  final Widget? nextScreen;

  const _Button({
    required this.title,
    required this.icon,
    this.nextScreen,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (nextScreen != null) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => nextScreen!),
          );
        }
      },
      child: Container(
        height: 56.h,
        margin: EdgeInsets.only(top: 11.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          color: Colors.white.withOpacity(0.2),
        ),
        child: Row(
          children: [
            Container(
              width: 44.h,
              height: 44.h,
              margin: EdgeInsets.only(left: 8.w, right: 12.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: AppColors.gradient,
                boxShadow: [AppColors.defaultShadow],
              ),
              child: Center(
                child: icon,
              ),
            ),
            Text(
              title,
              style: AppTypography.font18.copyWith(
                color: AppColors.yellowFCD1A3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
