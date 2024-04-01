import 'package:final_year/utils/constants/colors.dart';
import 'package:final_year/utils/widgets/custom_appbar.dart';
import 'package:final_year/utils/widgets/docs_container.dart';
import 'package:final_year/utils/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NationalProfileScreen extends StatelessWidget {
  const NationalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBAr(text: 'National Profile', hasBox: true, textColor: AppColors.mainColor, fontSize: 14.sp),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h, bottom: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boldText(text: 'Apply for National Documents'),
            SizedBox(height: 10.h,),
          nationalDocContainer(text: 'International Passports', context: context),
          nationalDocContainer(text: 'NIN', context: context),
          nationalDocContainer(text: 'Visa Application', context: context),
          nationalDocContainer(text: 'Drivers License', context: context)
          ],
        ),),
      ),
    );
  }
}