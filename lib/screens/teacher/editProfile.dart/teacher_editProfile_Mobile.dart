import 'package:flutter/material.dart';
import 'package:heilo/screens/student/drawer/student_drawer.dart';
import 'package:heilo/utils/config.dart';
import 'package:heilo/utils/dynamic_sizes.dart';



final GlobalKey<ScaffoldState> teacherScafoldKey = GlobalKey();
class TeacherEditProfileMobile extends StatefulWidget {
  const TeacherEditProfileMobile({ Key? key }) : super(key: key);

  @override
  State<TeacherEditProfileMobile> createState() => _TeacherEditProfileMobileState();
}

class _TeacherEditProfileMobileState extends State<TeacherEditProfileMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: teacherScafoldKey,
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
                teacherScafoldKey.currentState!.openDrawer();
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
      
    );
  }
}