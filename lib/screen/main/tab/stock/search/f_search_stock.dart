import 'package:flutter/material.dart';

import 'w_popular_search_stock_list.dart';
import 'w_search_history_stock_list.dart';
import 'w_stock_search_app_bar.dart';

class SearchStockFragment extends StatefulWidget {
  const SearchStockFragment({super.key});

  @override
  State<SearchStockFragment> createState() => _SearchStockFragmentState();
}

class _SearchStockFragmentState extends State<SearchStockFragment> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockSearchAppBar(controller: controller), //search bar
      body: ListView(children: [
        SearchHistoryStockList(),
        PopularSearchStockList(),
      ]),
    );
  }
}
