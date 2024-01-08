import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

abstract mixin class StockPercentageDataProvider {
  int get currentPrice;
  int get yesterdayClosePrice;
  // 1. 위의 두개의 변수는 nullable이 아니므로 값이 있다고 가정하고 아래의 함수들이 실행됨
  // 2. 그러기 위해서 클래스 선언시 앞에 abstract 를 추가하고
  // 3. int currentPrice; => int get currentPrice; 형태의 getter함수로 변경함으로 currentPrice 변수가 있다고 가정할수있다.
  // 4. 그리고 이 abstract 클래스를 상속받는 클래스에서 위두개의 변수를 @override로 구현하면 된다.

  double get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .toPrecision(2);

  bool get _isPlus => currentPrice > yesterdayClosePrice;
  bool get _isSame => currentPrice == yesterdayClosePrice;

  String get todayPercentageString =>
      _isPlus ? "+$todayPercentage" : "$todayPercentage";

  Color getPriceColor(BuildContext context) => _isSame
      ? context.appColors.lessImportant
      : _isPlus
          ? context.appColors.plus
          : context.appColors.minus;
}
