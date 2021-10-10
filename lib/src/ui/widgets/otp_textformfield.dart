import 'package:amp_charge/src/ui/utils/colors.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpTextFormField extends StatelessWidget {
  OtpTextFormField({Key? key}) : super(key: key);
  final countDownController = CountDownController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OtpTextField(
            numberOfFields: 4,
            fieldWidth: 50.w,
            borderWidth: 3,
            margin: EdgeInsets.symmetric(horizontal: 12.w),

            showFieldAsBox: true,
            onCodeChanged: (String code) {
              //TODO:handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  });
            }, // end onSu
          ),
          Container(
            height: 35.h,
            width: 1.w,
            color: ThemeColors.suggestionTextColor,
          ),
          CircularCountDownTimer(
            duration: 10,
            initialDuration: 10,
            controller: countDownController,
            width: 50.w,
            height: 50.h,
            ringColor: ThemeColors.bgColor,
            fillColor: ThemeColors.bgColor,
            textStyle: TextStyle(
                fontSize: 14.sp,
                color: ThemeColors.blackColor,
                fontWeight: FontWeight.bold),
            textFormat: CountdownTextFormat.MM_SS,
            isReverse: true,
            isTimerTextShown: true,
            autoStart: true,
            onStart: () {
              print('Countdown Started');
            },
            onComplete: () {
              print('Countdown Ended');
            },
          ),
        ],
      ),
    );
  }
}
