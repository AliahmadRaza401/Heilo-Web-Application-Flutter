import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student%20profile/onDemand/on_demand.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

class StudentProfileWeb extends StatefulWidget {
  const StudentProfileWeb({Key? key}) : super(key: key);

  @override
  State<StudentProfileWeb> createState() => _StudentProfileWebState();
}

class _StudentProfileWebState extends State<StudentProfileWeb> {
  @override
  Widget build(BuildContext context) {
    PageController page = PageController();
    return Scaffold(
      backgroundColor: AppColors.greenDark,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: page,
            style: SideMenuStyle(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              openSideMenuWidth: 250.w,
              compactSideMenuWidth: 50,
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: AppColors.customSkimColor,
              selectedColor: AppColors.customWhite,
              selectedTitleTextStyle: TextStyle(
                color: AppColors.customBlack,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
              selectedIconColor: AppColors.customBlack,
              unselectedIconColor: AppColors.customWhite,
              unselectedTitleTextStyle: TextStyle(
                color: AppColors.customWhite,
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(
                top: 50.h,
                bottom: 80.h,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 46.h,
                  maxWidth: 96.w,
                ),
                child: Image.asset(
                  'assets/png/logoWhite.png',
                ),
              ),
            ),
            footer: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 68.w,
                  height: 98.h,
                  decoration: BoxDecoration(
                    color: AppColors.customWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                    ),
                  ),
                  child: const Icon(
                    Icons.logout,
                    color: AppColors.greenDark,
                  ),
                ),
                AppSizes.widthBox(context, .006),
                text(
                  context,
                  "Log Out",
                  16.sp,
                  AppColors.customWhite,
                  bold: true,
                ),
              ],
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'On Demand',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: const Icon(Icons.home),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Quiz',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icon(Icons.supervisor_account),
              ),
              SideMenuItem(
                priority: 2,
                title: 'DashBoard',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: Icon(Icons.file_copy_rounded),
              ),
              SideMenuItem(
                priority: 3,
                title: 'Profile',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: Icon(Icons.download),
              ),
              SideMenuItem(
                priority: 4,
                title: 'Edit Profile',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: Icon(Icons.settings),
              ),
              SideMenuItem(
                priority: 5,
                title: 'Inbox',
                onTap: () {
                  page.jumpToPage(5);
                },
                icon: Icon(Icons.exit_to_app),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 16.r, 16.r, 16.r),
              child: PageView(
                controller: page,
                children: [
                  const OnDemand(),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: const Center(
                      child: Text(
                        'Dashboard1',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: const Center(
                      child: Text(
                        'Dashboard2',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: const Center(
                      child: Text(
                        'Dashboard3',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: const Center(
                      child: Text(
                        'Dashboard4',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.customWhite,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: const Center(
                      child: Text(
                        'Dashboard5',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
