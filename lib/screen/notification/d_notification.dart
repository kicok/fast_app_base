import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class NotificationDialog extends DialogWidget {
  final List<TtossNotification> notifications;
  NotificationDialog(
    this.notifications, {
    super.key,
    super.animation = NavAni.Bottom,
    // super.barrierDismissible = false, // 다이얼로그이외의 것을 클릭했을때는 닫히지 않도록 설정.
  });

  @override
  State<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.notifications
              .map((element) => NotificationItemWidget(
                    notification: element,
                    onTap: () {
                      print('wow');
                      widget.hide();
                    },
                  ))
              .toList()
        ],
      ),
    );
  }
}
