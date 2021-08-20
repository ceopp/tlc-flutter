import 'package:flutter/material.dart';
import 'package:superstarteam/utils/utils.dart';
import 'package:superstarteam/widgets/widgets.dart';

class AboutCompany extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBackgroundWrapper(
      body: Column(
        children: [
          const CustomAppBar(title: 'О компании'),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              children: [
                AppIcons.logoText(),
                Padding(
                  padding: EdgeInsets.only(top: 25.h, bottom: 15.h),
                  child: Container(
                    height: 163.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.red,
                    ),
                  ),
                ),
                Text(
                  'Total Life Changes (TLC) - компания прямых продаж, предлагающая широкий ассортимент продуктов для здоровья и хорошего самочувствия. Основатель и генеральный директор Джек Фаллон создал TLC 16 лет назад с помощью единого продукта: NutraBurst®. С тех пор TLC продолжает разрабатывать продукты для снижения веса и хорошего самочувствия, соответствующие привлекательному гибридному маркетинг плану который включает в себя бинар.',
                  style: AppTypography.font14.copyWith(
                    letterSpacing: 0.84,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
