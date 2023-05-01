import 'package:flutter/material.dart';
import 'package:phones/view/category/apple_wdget.dart';
import 'package:phones/view/category/huawei_widget.dart';
import 'package:phones/view/category/oppo_wdget.dart';
import 'package:phones/view/category/samsung_widget.dart';
import 'package:phones/view/category/xiaomi_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        bottom:
            TabBar(isScrollable: true, controller: _tabController, tabs: const [
          Tab(
            text: "Apple",
          ),
          Tab(
            text: "Samsung",
          ),
          Tab(
            text: "Huawei",
          ),
          Tab(
            text: "Xiaomi",
          ),
          Tab(
            text: "Oppo",
          )
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _list,
      ),
    );
  }

  final List<Widget> _list = const [
    AppleWidget(),
    SamsungWidget(),
    HuaweiWidget(),
    XiaomiWidget(),
    XiaomiWidget(),
    OppoWidget()
  ];
}
