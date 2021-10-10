import 'package:amp_charge/src/ui/utils/colors.dart';
import 'package:amp_charge/src/ui/utils/image.dart';
import 'package:amp_charge/src/ui/widgets/otp_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
              style: TextStyle(fontSize: 16.h, fontFamily: "Manrope"),
            ),
            SizedBox(height: 50.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter OTP received on your phone",
                style: TextStyle(
                  fontSize: 12.h,
                  color: ThemeColors.darkGrayColor,
                  fontFamily: "Manrope",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              // color: Colors.yellow,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: OtpTextFormField(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  Text(
                    "Didn’t receive OTP ?",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: ThemeColors.darkGrayColor,
                      fontFamily: "Manrope",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Resend Now",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: ThemeColors.blueColor,
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
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
