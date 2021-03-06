import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

final GlobalKey<ScaffoldState> studentScafoldKey = GlobalKey();

class StudentChatMain extends StatefulWidget {
  const StudentChatMain({Key? key}) : super(key: key);

  @override
  State<StudentChatMain> createState() => _StudentChatMainState();
}

class _StudentChatMainState extends State<StudentChatMain> {
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
      body: Container(
        margin: EdgeInsets.only(
          // top: 88.h,
          left: 33.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: 57.h,
              // width: 487.w,
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
                title:
                    text(context, 'Ruhul Tusar', 18.0, AppColors.customBlack),
                subtitle: text(
                  context,
                  'Maple Leaf International School',
                  13.0,
                  AppColors.greyText,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  // height: AppSizes.dynamicHeight(context, 0.2),
                  width: AppSizes.dynamicWidth(context, 0.7),
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
                    title: text(context, '', 18.0, AppColors.customBlack),
                    subtitle: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF8F8F8)),
                      child: text(
                          context,
                          'Dear Sir, I would like to study the genetics part of biology. To be precise the DNA replication. Can you help me?',
                          13.0,
                          AppColors.greyText,
                          maxLines: 4),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  // height: AppSizes.dynamicHeight(context, 0.15),
                  width: AppSizes.dynamicWidth(context, 0.7),
                  child: ListTile(
                    // title: text(context, '', 18.0, AppColors.customBlack),
                    subtitle: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffB8F3DE)),
                      child: text(
                          context,
                          'Dear Sir, I would like to study the genetics part of biology. To be precise the DNA replication. Can you help me?',
                          13.0,
                          AppColors.greyText,
                          maxLines: 4),
                    ),
                    trailing: Container(
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
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.file_present_outlined,
                  color: Color(0xff1BE59D),
                  size: 25,
                ),
                Container(
                  width: AppSizes.dynamicWidth(context, 0.7),
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.customGrey,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 40.w, vertical: 10),
                      border: InputBorder.none,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const Icon(
                  Icons.send,
                  color: Color(0xff1BE59D),
                  size: 25,
                ),
              ],
            ),
            SizedBox(
              height: AppSizes.dynamicHeight(context, 0.01),
            )
          ],
        ),
      ),
    );
  }
}
