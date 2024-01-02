import 'package:after_layout/after_layout.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    delay(() {
      Nav.clearAllAndPush(const MainScreen());
    }, 1500.ms);
    throw UnimplementedError();
  }

  @override
  void initState() {
    // initState 내부에서는 값만 변경해야지 화면에 영향을 주려고 시도하면 에러가 나도록 되어있음. 그러므로 AfterLayoutMixin 을 이용해야함.
    //   Nav.clearAllAndPush(const MainScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/image/splash/splash.png",
          width: 192, height: 192),
    );
  }
}
