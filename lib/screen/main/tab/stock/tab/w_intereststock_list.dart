import 'package:fast_app_base/screen/main/tab/stock/tab/dummy_interest_stocks.dart';
import 'package:flutter/material.dart';

import 'w_stock_item.dart';

class InterestStockList extends StatelessWidget {
  const InterestStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myInterestStocks
            .map((element) => StockItem(stock: element))
            .toList(),
      ],
    );
  }
}
