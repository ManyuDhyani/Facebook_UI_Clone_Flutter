import 'package:facebook_ui_clone_flutter/Windows/friendDetail.dart';
import 'package:facebook_ui_clone_flutter/Windows/homeDetail.dart';
import 'package:facebook_ui_clone_flutter/Windows/mainDrawer.dart';
import 'package:facebook_ui_clone_flutter/Windows/marketPlaceDetail.dart';
import 'package:facebook_ui_clone_flutter/Windows/messageDetail.dart';
import 'package:facebook_ui_clone_flutter/Windows/notificationDetail.dart';
import 'package:facebook_ui_clone_flutter/Windows/videoDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';

class NavMain extends StatefulWidget {
  NavMain({Key? key}) : super(key: key);

  @override
  State<NavMain> createState() => _NavMainState();
}

class _NavMainState extends State<NavMain> with SingleTickerProviderStateMixin {
  final List<Tab> topNavTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_outline)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(
      icon: Badge(
        position: BadgePosition.topEnd(top: -20, end: -5),
        badgeContent:
            Text("3", style: TextStyle(fontSize: 18, color: Colors.white)),
        child: Icon(Icons.notifications_outlined),
      ),
    ),
    Tab(icon: Icon(Icons.video_library_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];

  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: topNavTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  Future<bool> _onWillPop() async {
    if (_tabController.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(const Duration(milliseconds: 200), () {
      _tabController.index = 0;
    });

    return _tabController.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            'facebook',
            style: TextStyle(
              fontFamily: 'Klavika',
              fontSize: 34,
              color: Colors.blue[700],
            ),
          ),
          actions: [
            Container(
              child: IconButton(
                icon: const Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  print("Search button is pressed");
                },
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon: const Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topNavTabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: mainDrawer(),
        ),
        body: TabBarView(controller: _tabController, children: [
          homeDetail(),
          friendDetail(),
          messageDetail(),
          notificationDetail(),
          videoDetail(),
          marketPlaceDetail(),
        ]),
      ),
    );
  }
}
