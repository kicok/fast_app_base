import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockName;
  const StockDetailScreen(this.stockName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(stockName)),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            '주식상세'.text.make(),
          ],
        ),
      ),
    );
  }
}
