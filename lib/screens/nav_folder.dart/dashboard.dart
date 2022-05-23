import 'package:flutter/material.dart';
import 'package:flutter_cubit/widget/app_large_text.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // menu text
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Expanded(child: Container()),
                Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5)))
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          // discover text
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: BoldText(text: "Discover"),
          ),
          const SizedBox(
            height: 40,
          ),
          // tabbar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.black,
                  tabs: const [
                    Tab(
                      child: Text("Places"),
                    ),
                    Tab(
                      child: Text("Inspiration"),
                    ),
                    Tab(
                      child: Text("Explore"),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: const [
              Text("Places"),
              Text("Inspiration"),
              Text("Explore"),
            ]),
          ),
        ],
      ),
    );
  }
}
