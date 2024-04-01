
import 'package:final_year/features/route/route.dart';
import 'package:final_year/features/screens/signature.dart';
import 'package:final_year/utils/widgets/button.dart';
import 'package:final_year/utils/widgets/custom_appbar.dart';
import 'package:final_year/utils/widgets/docs_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UploadDocuments extends StatelessWidget {
  const UploadDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBAr(text: 'Upload Documents'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h, bottom: 50.h),
          child: Column(
            children: [
              uploadDocContainer(mainText: 'NIN'),
              uploadDocContainer(mainText: 'International Passport'),
              uploadDocContainer(mainText: 'Birth Certificate'),
              customButton(text: 'Continue', onTap: (){
                Get.toNamed(AppRoute.signature);
              })
            ],
          )
        ),
      ),
    );
  }
}