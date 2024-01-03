import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:flutter/material.dart';

const width10 = Width(10);
const width5 = Width(5);
const height10 = Height(10);
const height5 = Height(5);

class TtosAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const TtosAppBar({Key? key}) : super(key: key);

  @override
  State<TtosAppBar> createState() => _TtosAppBarState();
}

class _TtosAppBarState extends State<TtosAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      height: TtosAppBar.appBarHeight,
      child: Row(
        children: [
          width10,
          Image.asset('$basePath/icon/toss.png', height: 30),
          emptyExpanded,
          Image.asset('$basePath/icon/map_point.png', height: 30),
          width10,
          Tap(
            onTap: () {
              Nav.push(NotificationScreen());
            },
            child: Stack(
              children: [
                Image.asset('$basePath/icon/notification.png', height: 30),
                if (_showRedDot)
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ))
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
