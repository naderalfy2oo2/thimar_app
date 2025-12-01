import 'package:flutter/material.dart';
import 'package:thimar_app/widget/item_order.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('طلباتي', style: TextStyle(color: Color(0xff4C8613))),
        ),
        body: DefaultTabController(
          length: 2,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      color: Color(0xff4C8613),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.black,
                    dividerHeight: 0,

                    labelColor: Colors.white,
                    unselectedLabelStyle: TextStyle(color: Colors.white),
                    tabs: [
                      Tab(text: 'الحالية'),
                      Tab(text: 'المنتهية'),
                    ],
                  ),

                  ListView.separated(
                    itemCount: 10,

                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => SizedBox(height: 12),
                    itemBuilder: (context, index) => ItemOrder(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
