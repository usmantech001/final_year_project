import 'package:final_year/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget inpuutField(
    {Widget? widget,
    TextInputType keyboardType = TextInputType.text,
    String? hintText,
    Color hintColor = Colors.grey,
    TextEditingController? controller,
    bool readOnly = false,
    Function(String)? onChanged,
    bool obscureText = false,
    Function()? onTap}) {

    return Container(
      margin: EdgeInsets.only(top: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 60.h,
            child: Expanded(
              child: TextField(
                cursorColor: AppColors.mainColor,
                style: TextStyle(
                    fontSize: 18.sp, decoration: TextDecoration.none),
                controller: controller,
                keyboardType: keyboardType,
                obscureText: obscureText,
                onTap: onTap,
                readOnly: readOnly,
                onChanged: onChanged,
                decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle:const  TextStyle(color: AppColors.hintTextColor, fontWeight: FontWeight.w400),
                    // contentPadding: EdgeInsets.only(right: 10),
                    
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none),
                    enabledBorder: const  OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textFieldBorderColor
                      )
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.mainColor
                        ))),
              ),
            ),
          )
        ],
      ),
    );

}