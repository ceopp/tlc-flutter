import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superstarteam/blocs/registration_bloc/registration_screen_bloc.dart';
import 'package:superstarteam/screens/main_screen.dart';
import 'package:superstarteam/utils/utils.dart';
import 'package:superstarteam/widgets/widgets.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => RegistrationBloc(),
        child: Column(
          children: const [
            SafeArea(bottom: false, child: SizedBox()),
            AppBarCustom(isBackArrow: false),
            Expanded(child: _Body()),
          ],
        ),
      ),
    ).unfocus(context);
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegistrationBloc>();

    return ListView(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        top: 4.h,
      ),
      children: [
        Text(
          // ignore: lines_longer_than_80_chars
          'Если вам понравилась информация - зарегистрируйтесь в приложении и получите больше пользы',
          textAlign: TextAlign.center,
          style: AppTypography.font18.copyWith(
            height: 1.64,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 40.h)),
        _TextForm(
          title: 'Телефон или E-mail',
          hintText: 'Например, mail67@mail.ru',
          onChange: bloc.setEmail,
        ),
        _TextForm(
          title: 'Имя',
          hintText: 'Например, Александр',
          onChange: bloc.setName,
        ),
        _TextForm(
          title: 'Пароль',
          onChange: bloc.setPassword,
          obscureText: true,
        ),
        _TextForm(
          title: 'Повторите пароль',
          onChange: bloc.setRepeat,
          obscureText: true,
        ),
        Padding(
          padding: EdgeInsets.only(top: 58.h),
          child: DefaultButton(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => MainScreen(),
                ),
              );
            },
            text: 'Зарегистрироваться',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 31.h, bottom: 54.h),
          child: Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Уже есть аккаунт? ',
                    style: AppTypography.font14.copyWith(
                      color: AppColors.yellowE3912B.withOpacity(0.6),
                    ),
                  ),
                  TextSpan(
                    text: 'Войти',
                    style: AppTypography.font14.copyWith(
                      color: AppColors.yellowE3912B,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _TextForm extends StatefulWidget {
  final String title;
  final String? hintText;
  final bool? obscureText;
  final void Function(String)? onChange;

  const _TextForm({
    required this.title,
    this.hintText,
    this.onChange,
    this.obscureText,
    Key? key,
  }) : super(key: key);

  @override
  __TextFormState createState() => __TextFormState();
}

class __TextFormState extends State<_TextForm> {
  bool isObs = false;

  @override
  void initState() {
    isObs = widget.obscureText ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget? icon;
    if (widget.obscureText != null) {
      icon = GestureDetector(
        onTap: () {
          setState(() {
            isObs = !isObs;
          });
        },
        behavior: HitTestBehavior.opaque,
        child: isObs ? AppIcons.eye() : AppIcons.eyeSlash(),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(top: 10.h)),
        Text(
          widget.title,
          style: AppTypography.font16,
        ),
        Padding(padding: EdgeInsets.only(top: 12.h)),
        DefaultTextForm(
          hintText: widget.hintText,
          onChanged: widget.onChange,
          obscureText: isObs,
          suffixIcon: icon,
        )
      ],
    );
  }
}
