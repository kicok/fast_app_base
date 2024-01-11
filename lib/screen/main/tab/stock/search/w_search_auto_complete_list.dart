import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:flutter/material.dart';
import 'package:nav/nav.dart';
import 'package:velocity_x/velocity_x.dart';

import 's_stock_detail.dart';
import 'search_stock_data.dart';

class SearchAutocompleteList extends StatelessWidget
    with SearchStockDataProvider {
  final TextEditingController controller;
  SearchAutocompleteList(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final stockName = searchData.autoCompleteList[index].stockName;
        return Tap(
            onTap: () {
              // 키보드로 검색한 기쿼드 삭제 => 키워드가 없으면 autoCompleteList 도 사라진다.
              controller.clear();
              searchData.addHistory(stockName);
              Nav.push(StockDetailScreen(stockName));
            },
            child: stockName.text.make().p(20));
      },
      itemCount: searchData.autoCompleteList.length,
    );
  }
}
