import 'package:fast_app_base/common/util/local_json.dart';
import 'package:get/get.dart';

import '../vo/vo_simple_stock.dart';

abstract mixin class SearchStockDataProvider {
  late final searchData = Get.find<SearchStockData>();
}

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(['삼성전자', 'LG전자', '현대차', '넷플릭스']);
    loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async {
    final jsonList =
        await LocalJson.getObjectList<SimpleStock>('stock_list.json');
    stocks.addAll(jsonList);
  }

  void search(String keyword) {
    if (keyword.isEmpty) {
      autoCompleteList.clear();
      return;
    }
    autoCompleteList.value =
        stocks.where((element) => element.stockName.contains(keyword)).toList();
  }

  void addHistory(String keyword) {
    // searchHistoryList.add(keyword); // 뒤에 추가한다.
    searchHistoryList.insert(0, keyword); // 맨 앞으로 추가한다.
  }

  void removiHistory(String stockName) {
    searchHistoryList.remove(stockName);
  }
}
