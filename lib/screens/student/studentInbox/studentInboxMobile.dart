import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

import 'studentChatMain.dart';

final GlobalKey<ScaffoldState> studentScafoldKey = GlobalKey();

class StudentInboxMobile extends StatefulWidget {
  const StudentInboxMobile({Key? key}) : super(key: key);

  @override
  State<StudentInboxMobile> createState() => _StudentInboxMobileState();
}

class _StudentInboxMobileState extends State<StudentInboxMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: studentScafoldKey,
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
                studentScafoldKey.currentState!.openDrawer();
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
      drawer: StudentDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
            top: 3.h,
            right: AppSizes.dynamicWidth(context, 0.03),
            left: AppSizes.dynamicWidth(context, 0.03),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                // width: 594.w,
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.customGrey,
                ),
                // padding: EdgeInsets.only(left: 12),
                child: TextFormField(
                  decoration: const InputDecoration(
                      // hintText: "You phone number here...",
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30.h,
                ),
                child: text(
                  context,
                  'All Messages (41)',
                  18.0,
                  AppColors.bblackText,
                  bold: false,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30.h,
                  ),
                  child: Column(
                    children: [
                      messageWidget(),
                      SizedBox(
                        height: 15.h,
                      ),
                      messageWidget(),
                      SizedBox(
                        height: 15.h,
                      ),
                      messageWidget(),
                      SizedBox(
                        height: 15.h,
                      ),
                      messageWidget(),
                      SizedBox(
                        height: 15.h,
                      ),
                      messageWidget(),
                      SizedBox(
                        height: 15.h,
                      ),
                      messageWidget(),
                      SizedBox(
                        height: 15.h,
                      ),
                      messageWidget(),
                      SizedBox(
                        height: 15.h,
                      ),
                      messageWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget messageWidget() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => StudentChatMain()));
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffF8F8F8),
          border: Border(
            left: BorderSide(
              width: 10.0,
              color: AppColors.customGrey,
            ),
            // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
          ),
        ),
        // width: 585.w,
        // height: 88.h,
        padding: EdgeInsets.only(
          top: 11.h,
          left: 10.w,
        ),
        child: ListTile(
          leading: Container(
            height: AppSizes.dynamicHeight(context, 0.11),
            width: AppSizes.dynamicWidth(context, 0.15),
            // margin: EdgeInsets.only(
            //   left: 20.w,
            // ),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/png/wp2398385 1.png",
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          title: Row(
            children: [
              text(
                context,
                'Sakib Abdullah      ',
                AppSizes.dynamicWidth(context, 0.03),
                AppColors.customBlack,
                bold: false,
              ),
              const Icon(
                Icons.circle,
                color: Color(0xff1BE59D),
                size: 10,
              )
            ],
          ),
          subtitle: RichText(
            text: const TextSpan(
              text: 'Replied: Bhaiya physics er wave...',
              style: TextStyle(
                color: Color(0xffCFD8DC),
                fontSize: 11.0,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: '     6:15 pm',
                  style: TextStyle(
                    color: Color(0xff444F55),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
