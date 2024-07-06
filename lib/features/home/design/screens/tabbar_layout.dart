import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/theme/app_styles.dart';
import 'package:facebook/features/friends/design/screens/friends_screen.dart';
import 'package:facebook/features/home/design/screens/home_screen.dart';
import 'package:facebook/features/notiifications/design/screens/notification_screen.dart';
import 'package:facebook/features/profile/design/screens/my_profile_screen.dart';
import 'package:facebook/features/settings/design/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarLayout extends StatefulWidget {
  const TabBarLayout({super.key});

  @override
  State<TabBarLayout> createState() => _TabBarLayoutState();
}

class _TabBarLayoutState extends State<TabBarLayout>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      animationDuration: const Duration(milliseconds: 800),
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('facebook', style: AppStyles.style20Bold),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/images/fb_messenger.png'),
                    ),
                  ],
                ),
              ),
              TabBar(
                controller: _tabController,
                onTap: (value) {},
                indicatorColor: const Color(0xFF384CFF),
                labelColor: const Color(0xFF384CFF),
                tabs: const <Widget>[
                  Tab(icon: Icon(Icons.home, size: 30)),
                  Tab(child: Center(child: Icon(Icons.group, size: 30))),
                  Tab(
                      child:
                          Center(child: Icon(Icons.person_2_sharp, size: 30))),
                  Tab(
                      child: Center(
                          child: Icon(Icons.notifications_active, size: 30))),
                  Tab(
                      child: Center(
                    child: Icon(Icons.menu, size: 30),
                  )),
                ],
              ),
              verticalSpace(10),
              Expanded(
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: _tabController,
                  children: const [
                    HomeScreen(),
                    FriendsScreen(),
                    MyProfileScreen(),
                    NotificationScreen(),
                    SettingsScreen(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
