import 'package:flutter/material.dart';
import 'package:superstarteam/utils/utils.dart';

class ScaffoldBackgroundWrapper extends StatelessWidget {
  final Widget? body;

  const ScaffoldBackgroundWrapper({this.body, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            AppImages.backgroundImage(context: context),
            if (body != null)
              body!,
          ],
        ),
      ),
    );
  }
}
