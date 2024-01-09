import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:flutter/material.dart';

import 'search/s_search_stock.dart';
import 'tab/f_my_stock.dart';
import 'tab/f_todays_discovery.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({Key? key}) : super(key: key);

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  // 현재의 _StockFragmentStatez 클래스는 createState 되면서 생성이 되기 때문에
  // 생성이 끝나지 않은 객체의 this 를 final 키워드를 사용한 변수에 사용할수 없음.
  // 즉 생성이 완료되지 않았는데 final 로 선언된 변수에서 this 를 사용하겠다고 하는것은 에러.
  // 그러므로 final 앞에 late를 추가하여 this를 사용할수 없음.
  // late는 초기화를 지연하는 특성이 있어서 필요할때 변수를 초기화한다. lazy와 비슷함
  //
  late final tabController = TabController(length: 2, vsync: this);
  late int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.appColors.roundedLayoutBackground,
          pinned: true,
          actions: [
            ImageButton(
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () {
                Nav.push(const SearchStockScreen());
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {
                context.showSnackbar('킬랜더');
              },
            ),
            ImageButton(
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {
                context.showSnackbar('셋팅');
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            title,
            tabBar,
            currentIndex == 0
                ? const MyStockFragment()
                : const TodayDiscoveryFragment(),
          ],
        ))
      ],
    );
  }

  Widget get title => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            '토스증권'.text.size(24).bold.make(),
            width20,
            'S&P 500'
                .text
                .size(13)
                .bold
                .color(context.appColors.lessImportant)
                .make(),
            width10,
            3919.29
                .toComma()
                .text
                .size(13)
                .bold
                .color(context.appColors.plus)
                .make()
          ],
        ).pOnly(left: 20),
      );

  Widget get tabBar => Container(
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              indicatorColor: Colors.white,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              labelPadding: const EdgeInsets.symmetric(vertical: 20),
              tabs: [
                '내 주식'.text.make(),
                '오늘의 발견'.text.make(),
              ],
              controller: tabController,
            ),
            const Line()
          ],
        ),
      );
}
