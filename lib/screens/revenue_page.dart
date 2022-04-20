import 'package:flutter/material.dart';

import '../components/revenue_stat_card.dart';
import '../components/search_field_component.dart';
import '../components/store_stats.dart';
import 'revenue_page/revenue_page_desktop.dart';
import 'revenue_page/revenue_page_mobile.dart';

class RevenuePage extends StatelessWidget {
  const RevenuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 1613 || constraints.maxHeight < 715) {
          return RevenuePageMobile();
        } else {
          return RevenuePageDesktop();
        }
      }),
    );
  }
}
