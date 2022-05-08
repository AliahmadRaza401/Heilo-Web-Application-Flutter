import 'package:flutter/material.dart';
import 'package:heilo/screens/teacher/TeacherWallet/teacher_wallet_Web.dart';
import 'package:heilo/screens/teacher/TeacherWallet/teacher_wallet_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';


class TeacherWallet extends StatefulWidget {
  const TeacherWallet({Key? key}) : super(key: key);

  @override
  State<TeacherWallet> createState() => _TeacherWalletState();
}

class _TeacherWalletState extends State<TeacherWallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),

      child: ScreenTypeLayout(
        mobile: TeacherWalletMobile(),
        tablet: TeacherWalletWeb(),
        desktop: TeacherWalletWeb(),
      ),
    );
  }
}
