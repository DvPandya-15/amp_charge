import 'package:amp_charge/src/ui/utils/colors.dart';
import 'package:amp_charge/src/ui/utils/image.dart';
import 'package:amp_charge/src/ui/widgets/number_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final formKey = GlobalKey<FormState>();
  final numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.bgColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50.h),
            Image.asset(
              AmpChargeImage.appLogo,
              height: 50.h,
            ),
            SizedBox(height: 20.h),
            Text(
              "Schedule a safe and\nseamless ride",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.sp,
                  color: ThemeColors.darkGrayColor,
                  fontFamily: "Manrope",
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 50.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter mobile number to get started",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: ThemeColors.darkGrayColor,
                  fontFamily: "Manrope",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
              child: NumberTextFormField(
                controller: numberController,
              ),
            ),
            Expanded(
              child: Image.asset(
                AmpChargeImage.welcomeScreenLogo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
