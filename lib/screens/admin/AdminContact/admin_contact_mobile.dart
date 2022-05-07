// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/admin/Dashboard/dash_board_mobile.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import '../../../utils/config.dart';
import '../admin_drawer.dart';

class AdminContactMobile extends StatefulWidget {
  const AdminContactMobile({Key? key}) : super(key: key);

  @override
  State<AdminContactMobile> createState() => _AdminContactMobileState();
}

class _AdminContactMobileState extends State<AdminContactMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: adminScafoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 30, // Changing Drawer Icon Size
              ),
              onPressed: () {
                adminScafoldKey.currentState!.openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.primaryColor,
              child: Image.asset(
                'assets/png/wp2398385 1.png',
                height: AppSizes.dynamicHeight(context, 0.07),
                width: AppSizes.dynamicWidth(context, 0.07),
              ),
            ),
          ],
        ),
      ),
      drawer: AdminDrawer(),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.customWhite,
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding:
            EdgeInsets.symmetric(horizontal: AppSizes.dynamicWidth(context, .03,),vertical: AppSizes.dynamicHeight(context, .02)),
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: AppSizes.dynamicHeight(context, .03)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.dynamicWidth(context, .03)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: AppSizes.dynamicHeight(context, .4),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          AppSizes.dynamicHeight(context, .02)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 35.h,
                                        width: 131.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.green,
                                            // border: Border.all(
                                            //     color: AppColors.customBlack,
                                            //     width: 2.w),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Center(
                                          child: text(
                                              context,
                                              'Teacher ',
                                              AppSizes.dynamicWidth(
                                                  context, .009),
                                              AppColors.customWhite),
                                        ),
                                      ),
                                      Container(
                                        height: 34.h,
                                        width: 336.6.w,
                                        decoration: BoxDecoration(
                                            // border: Border.all(color: AppColors.green),
                                            color: AppColors.customWhite,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 10),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: TextField(
                                            cursorColor: AppColors.green,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                suffixIcon: Icon(
                                                  Icons.search,
                                                  color: AppColors.lightGrey,
                                                ),
                                                contentPadding: EdgeInsets.only(
                                                    top: 5, left: 10)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    text(
                                        context,
                                        'All Messages ( 41)',
                                        AppSizes.dynamicWidth(context, .009),
                                        AppColors.greyText),
                                  ],
                                ),
                                Expanded(
                                    child: Padding(
                                      padding:  EdgeInsets.only(bottom:AppSizes.dynamicHeight(context, .02)),
                                      child: ListView.builder(
                                          itemCount: 5,
                                          itemBuilder: ((context, index) {
                                            return messageRow(
                                                'assets/png/26170505_879427062237691_7434598743530738532_o 1.png',
                                                'Sakib Abdullah',
                                                'Dhaka University ',
                                                '01824696900',
                                                'write2ratusar@gmail.com',
                                                'You: Bhaiya kalke 5 tay set koro',
                                                '11-09-2021 (6:15 pm)');
                                          })),
                                    ))
                              ],
                            ),
                          ),
                        ),
                       Padding(
                          
                          padding:  EdgeInsets.only(left:AppSizes.dynamicWidth(context, .02)),
                          child: Container(
                            width:5,
                            height: AppSizes.dynamicHeight(context, .35),
                            child: VerticalDivider(
                              width: 4,
                              color: AppColors.customWhite,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              // color: Colors.blue,
                          height: AppSizes.dynamicHeight(context, .4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: AppSizes.dynamicHeight(context, .03)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        text(
                                            context,
                                            'Ruhul Amin Tusar',
                                            AppSizes.dynamicWidth(context, .01),
                                            AppColors.customBlack),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 4),
                                          child: text(
                                              context,
                                              'Maple Leaf International School',
                                              AppSizes.dynamicWidth(context, .01),
                                              AppColors.greyText),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: CircleAvatar(
                                        radius:
                                            AppSizes.dynamicHeight(context, .04),
                                        backgroundImage:
                                            AssetImage('assets/png/charles.png'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Container(
                                  // color: AppColors.customYellow,
                            
                                  width: 462.2,
                                  height: 139.h,
                                  child: Wrap(
                                    children: [
                                      text(
                                          context,
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin.',
                                          AppSizes.dynamicWidth(context, .01),
                                          AppColors.greyText,
                                          alignText:TextAlign.justify,
                                          maxLines: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // color: AppColors.blue,
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            )),
              Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: AppSizes.dynamicHeight(context, .03)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.dynamicWidth(context, .03)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: AppSizes.dynamicHeight(context, .4),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          AppSizes.dynamicHeight(context, .02)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 35.h,
                                        width: 131.w,
                                        decoration: BoxDecoration(
                                            color: AppColors.green,
                                            // border: Border.all(
                                            //     color: AppColors.customBlack,
                                            //     width: 2.w),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Center(
                                          child: text(
                                              context,
                                              'Student',
                                              AppSizes.dynamicWidth(
                                                  context, .009),
                                              AppColors.customWhite),
                                        ),
                                      ),
                                      Container(
                                        height: 34.h,
                                        width: 336.6.w,
                                        decoration: BoxDecoration(
                                            // border: Border.all(color: AppColors.green),
                                            color: AppColors.customWhite,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 10),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: TextField(
                                            cursorColor: AppColors.green,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                suffixIcon: Icon(
                                                  Icons.search,
                                                  color: AppColors.lightGrey,
                                                ),
                                                contentPadding: EdgeInsets.only(
                                                    top: 5, left: 10)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    text(
                                        context,
                                        'All Messages ( 41)',
                                        AppSizes.dynamicWidth(context, .009),
                                        AppColors.greyText),
                                  ],
                                ),
                                Expanded(
                                    child: Padding(
                                      padding:  EdgeInsets.only(bottom:AppSizes.dynamicHeight(context, .02)),
                                      child: ListView.builder(
                                          itemCount: 5,
                                          itemBuilder: ((context, index) {
                                            return messageRow(
                                                'assets/png/26170505_879427062237691_7434598743530738532_o 1.png',
                                                'Sakib Abdullah',
                                                'Dhaka University ',
                                                '01824696900',
                                                'write2ratusar@gmail.com',
                                                'You: Bhaiya kalke 5 tay set koro',
                                                '11-09-2021 (6:15 pm)');
                                          })),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          
                          padding:  EdgeInsets.only(left:AppSizes.dynamicWidth(context, .02)),
                          child: Container(
                            width:5,
                            height: AppSizes.dynamicHeight(context, .35),
                            child: VerticalDivider(
                              width: 4,
                              color: AppColors.customWhite,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              // color: Colors.blue,
                          height: AppSizes.dynamicHeight(context, .4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: AppSizes.dynamicHeight(context, .03)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        text(
                                            context,
                                            'Ruhul Amin Tusar',
                                            AppSizes.dynamicWidth(context, .01),
                                            AppColors.customBlack),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 4),
                                          child: text(
                                              context,
                                              'Maple Leaf International School',
                                              AppSizes.dynamicWidth(context, .01),
                                              AppColors.greyText),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: CircleAvatar(
                                        radius:
                                            AppSizes.dynamicHeight(context, .04),
                                        backgroundImage:
                                            AssetImage('assets/png/charles.png'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Container(
                                  // color: AppColors.customYellow,
                            
                                  width: 462.2,
                                  height: 139.h,
                                  child: Wrap(
                                    children: [
                                      text(
                                          context,
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor vulputate ut mauris sem. At platea erat diam sed proin.',
                                          AppSizes.dynamicWidth(context, .01),
                                          AppColors.greyText,
                                          alignText:TextAlign.justify,
                                          maxLines: 5),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // color: AppColors.blue,
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget messageRow(
    String image,
    String name,
    String uni,
    String id,
    String email,
    String message,
    String date,
  ) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width * .75,
        height: 76.h,
        decoration: BoxDecoration(
          color: AppColors.customWhite,
          // borderRadius: BorderRadius.circular(30)
        ),
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: double.infinity,
              width: 10,
              color: AppColors.green,
            ),
            CircleAvatar(
              radius: AppSizes.dynamicHeight(context, .03),
              backgroundImage: AssetImage(image),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text(context, name, AppSizes.dynamicWidth(context, .009),
                    AppColors.customBlack),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: text(context, uni,
                      AppSizes.dynamicWidth(context, .009), AppColors.greyText),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text(context, id, AppSizes.dynamicWidth(context, .009),
                    AppColors.customBlack),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: text(context, email,
                      AppSizes.dynamicWidth(context, .009), AppColors.greyText),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(context, message, AppSizes.dynamicWidth(context, .009),
                    AppColors.greyText),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: text(context, date,
                      AppSizes.dynamicWidth(context, .009), AppColors.greyText),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
