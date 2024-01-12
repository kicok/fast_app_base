import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_round_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class NumberDialog extends DialogWidget<int?> {
  NumberDialog({
    super.key,
    super.animation = NavAni.Fade,
    // super.barrierDismissible = false, // 다이얼로그이외의 것을 클릭했을때는 닫히지 않도록 설정.
  });

  @override
  State<NumberDialog> createState() => NumberDialogState();
}

class NumberDialogState extends DialogState<NumberDialog> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedContainer(
              child: Column(
            children: [
              '숫자를 입력해주세요'.text.make(),
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
              ),
              RoundButton(
                  text: '완료',
                  onTap: () {
                    final text = controller.text;
                    int number = int.parse(text);
                    widget.hide(
                        number); //  다이알로그 위젯이 닫히면서 위젯을 사용하는쪽에 number를 반환한다.
                  }),
            ],
          ))
        ],
      ),
    );
  }
}
