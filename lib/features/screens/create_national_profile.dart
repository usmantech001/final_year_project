import 'package:final_year/features/route/route.dart';
import 'package:final_year/utils/constants/colors.dart';
import 'package:final_year/utils/widgets/button.dart';
import 'package:final_year/utils/widgets/custom_appbar.dart';
import 'package:final_year/utils/widgets/text.dart';
import 'package:final_year/utils/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateNationalProfileScreen extends StatelessWidget {
  const CreateNationalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBAr(text: 'National Profile', textColor: AppColors.mainColor, fontSize: 14.sp, centerTitle: false, hasBox: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 50.h, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              boldText(text: 'Create National Profile'),
              inpuutField(hintText: 'First Name'),
              Row(
                children: [
                  Expanded(child: inpuutField(hintText: 'Last Name')),
                  SizedBox(width: 10.w,),
                  Expanded(child: inpuutField(hintText: 'Middle Name'))
                ],
              ),
              inpuutField(hintText: 'National Identification Number'),
              inpuutField(hintText: 'Email'),
              inpuutField(hintText: 'Password'),
              inpuutField(hintText: 'Re-enter Password'),
             
              customButton(text: 'Continue', onTap: (){
                Get.toNamed(AppRoute.createProfile);
                
              }
              )
            ],
            
          ),
        ),
      ),
    );
  }
}