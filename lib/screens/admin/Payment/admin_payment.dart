import 'package:flutter/material.dart';
import 'package:heilo/screens/admin/Payment/payment_mobile.dart';
import 'package:heilo/screens/admin/Payment/payment_web.dart';
import 'package:responsive_builder/responsive_builder.dart';



class AdminPayment extends StatefulWidget {
  const AdminPayment({ Key? key }) : super(key: key);

  @override
  State<AdminPayment> createState() => _AdminPaymentState();
}

class _AdminPaymentState extends State<AdminPayment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: AppSizes.dynamicWidth(context, 1),
      // height: AppSizes.dynamicHeight(context, 1),
     
      child: ScreenTypeLayout(
        mobile: PaymentPageMobile(),
        tablet: PaymentPageWeb(),
        desktop: PaymentPageWeb(),
      ),
    );
  }
}