import 'package:fast_app_base/common/data/preference/item/rx_preference_item.dart';
import 'package:fast_app_base/common/data/preference/item/rxn_preference_item.dart';
import 'package:fast_app_base/common/theme/custom_theme.dart';
import 'item/preference_item.dart';

class Prefs {
  static final appTheme =
      PreferenceItem<CustomTheme>('appTheme', CustomTheme.dark);
  static final isPushOn = PreferenceItem<bool>('isPushOn', false);
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOn', false);
  static final sliderPosition =
      RxPreferenceItem<double, RxDouble>('sliderPosition', 0.0);
  static final birthday = RxnPreferenceItem<DateTime, Rxn<DateTime>>(
      'birthday'); // Getx의 Rx는 null 값을 할당할수 없으므로 Rxn을 사용해서 null을 할당

  static final number = RxPreferenceItem<int, RxInt>('number', 0);
}
