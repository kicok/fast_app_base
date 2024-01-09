import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';
import 'package:nav/nav.dart';

class StockSearchAppBar extends StatelessWidget implements PreferredSize {
  final TextEditingController controller;
  const StockSearchAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Tap(
              onTap: () => Nav.pop(context),
              child: const SizedBox(
                width: 56,
                height: kToolbarHeight,
                child: Arrow(
                  direction: AxisDirection.left,
                ),
              )),
          Expanded(
              child: TextFieldWithDelete(
            controller: controller,
            textInputAction: TextInputAction.search, // 키보드에 검색버튼이 보인다.
            onEditingComplete: () {
              debugPrint('검색 확인버튼');
              AppKeyboardUtil.hide(context);
            },
            texthint: "'커피'를 검색 해보세요",
          ).pOnly(top: 6)),
          width20,
        ],
      ),
    );
  }

  @override
  Widget get child => 'aaaa'.text.make();

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
