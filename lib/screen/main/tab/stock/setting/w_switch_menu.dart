import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'w_os_switch.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onChanged; // ValueChanged<bool> 자체가 function 을 의미함.
  const SwitchMenu(this.title, this.isOn, {super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.make(),
        emptyExpanded,
        OsSwitch(value: isOn, onChanged: onChanged),
      ],
    ).p20();
  }
}
