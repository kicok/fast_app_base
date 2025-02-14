import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TtossNotification>[
  TtossNotification(
    NotificationType.tossPay,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(27.minutes),
    isRead: true,
  ),
  TtossNotification(
    NotificationType.stock,
    '인적부할에 대해 알려드릴게요',
    DateTime.now().subtract(1.hours),
  ),
  TtossNotification(
    NotificationType.walk,
    '1000걸음 이상 걸었다면 포인트 받으세요',
    DateTime.now().subtract(8.hours),
    isRead: true,
  ),
  TtossNotification(
    NotificationType.moneyTip,
    '유럽 식품 물가가 치솟고 있어요.\n 김창옥님, 유럽여행에 관심이 있다면 확인해보세요',
    DateTime.now().subtract(11.hours),
    isRead: true,
  ),
  TtossNotification(
    NotificationType.walk,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(12.hours),
    isRead: true,
  ),
  TtossNotification(
    NotificationType.moneyTip,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(13.hours),
  ),
  TtossNotification(
    NotificationType.people,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(1.days),
  ),
  TtossNotification(
    NotificationType.walk,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(12.hours),
    isRead: true,
  ),
  TtossNotification(
    NotificationType.moneyTip,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(13.hours),
  ),
  TtossNotification(
    NotificationType.people,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(1.days),
  ),
  TtossNotification(
    NotificationType.walk,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(12.hours),
    isRead: true,
  ),
  TtossNotification(
    NotificationType.moneyTip,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(13.hours),
  ),
  TtossNotification(
    NotificationType.people,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(1.days),
  ),
];
