import 'package:amp_charge/src/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberTextFormField extends StatelessWidget {
  NumberTextFormField({Key? key, required this.controller}) : super(key: key);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        // color: Colors.yellow,
        height: 50.h,
        child: Form(
          key: key,
          child: Row(
            children: [
              SizedBox(
                width: 10.w,
              ),
              Text(
                "+91",
                style: TextStyle(
                  fontSize: 12.h,
                  color: ThemeColors.suggestionTextColor,
                  fontFamily: "Manrope",
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              VerticalDivider(
                endIndent: 10.h,
                indent: 10.h,
                thickness: 2,
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setWidth(5)),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(
                      fontSize: 12.h,
                      color: ThemeColors.suggestionTextColor,
                      fontFamily: "Manrope",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
