import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PointButton extends StatelessWidget {
  final int point;
  const PointButton({super.key, required this.point});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        "내 포인트".text.color(context.appColors.lessImportant).make(),
        emptyExpanded,
        "$point 원".text.color(context.appColors.lessImportant).bold.make(),
        width10,
        Arrow(color: context.appColors.lessImportant),
      ],
    );
  }
}
