import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();
  static const yellowFCD1A3 = Color(0xffFCD1A3);
  static const blue2D1457 = Color(0xff2D1457);
  static const yellowE3912B = Color(0xffE3912B);
  static const grey757575 = Color(0xff757575);
  static const redC61E15 = Color(0xffC61E15);

  static final defaultShadow = BoxShadow(
    color: Colors.white.withOpacity(0.5),
    offset: const Offset(-2, -1),
    blurRadius: 4,
  );

  static final boxShadow000430 = BoxShadow(
    color: Colors.black.withOpacity(0.15),
    offset: const Offset(0, -4),
    blurRadius: 30,
  );

  static Gradient gradient = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [yellowFCD1A3, yellowE3912B],
    stops: [0.0, 1.0],
  );
}
