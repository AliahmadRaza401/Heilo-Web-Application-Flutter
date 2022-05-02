import 'package:flutter/material.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';
import 'package:heilo/widgets/text_widget.dart';

final GlobalKey<ScaffoldState> studentScafoldKey = GlobalKey();

class StudentQuizMobile extends StatefulWidget {
  const StudentQuizMobile({Key? key}) : super(key: key);

  @override
  State<StudentQuizMobile> createState() => _StudentQuizMobileState();
}

class _StudentQuizMobileState extends State<StudentQuizMobile> {
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
        padding: EdgeInsets.only(
          left: AppSizes.dynamicWidth(context, 0.02),
          right: AppSizes.dynamicWidth(context, 0.02),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            text(
              context,
              'TEST YOURSELF KNOW YOURSELF',
              14.0,
              AppColors.greenDark,
              bold: true,
            ),
          ],
        ),
      ),
    );
  }
}
