import 'package:bloc_flutter/ui/common_widgets/icon/my_icon.dart';
import 'package:bloc_flutter/ui/common_widgets/text/my_text.dart';
import 'package:bloc_flutter/utils/colors/app_colors.dart';
import 'package:bloc_flutter/utils/sizes/size.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();

    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    // _tabController.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: AppSize.width(context) / 2,
            leading: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MIcon(
                      icon: Icons.person_pin_circle,
                      iconColor: AppColors.darkPink,
                      size: AppSize.xl,
                    ),
                    MTextWidget(text: 'Ranchi'),
                    MIcon(
                      icon: Icons.arrow_drop_down,
                      iconColor: AppColors.darkPink,
                      size: AppSize.xl * 2,
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.tune,
                ),
              ),
            ],
          ),
          SliverList.list(
            children: const [],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(AppSize.md),
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
        ),
        child: MotionTabBar(
          controller: _motionTabBarController, // ADD THIS if you need to change your tab programmatically
          initialSelectedTab: "Home",
          labels: const ["Dashboard", "Home", "Profile", "Settings"],
          icons: const [Icons.dashboard, Icons.home, Icons.people_alt, Icons.settings],

          // optional badges, length must be same with labels
          badges: [
            // Default Motion Badge Widget
            const MotionBadgeWidget(
              text: '10+',
              textColor: Colors.white, // optional, default to Colors.white
              color: Colors.red, // optional, default to Colors.red
              size: 18, // optional, default to 18
            ),

            // custom badge Widget
            // Container(
            //   color: Colors.black,
            //   padding: const EdgeInsets.all(2),
            //   child: const Text(
            //     '11',
            //     style: TextStyle(
            //       fontSize: 14,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            null,

            // allow null
            null,

            // Default Motion Badge Widget with indicator only
            const MotionBadgeWidget(
              isIndicator: true,
              color: AppColors.darkPink, // optional, default to Colors.red
              size: 5, // optional, default to 5,
              show: true, // true / false
            ),
          ],
          tabSize: 50,
          tabBarHeight: 55,
          textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          tabIconColor: AppColors.lightPink,
          tabIconSize: 28.0,
          tabIconSelectedSize: 26.0,
          tabSelectedColor: AppColors.darkPink,
          tabIconSelectedColor: Colors.white,
          tabBarColor: Colors.white,
          onTabItemSelected: (int value) {
            setState(() {
              // _tabController!.index = value;
              _motionTabBarController!.index = value;
            });
          },
        ),
      ),
    );
  }
}
