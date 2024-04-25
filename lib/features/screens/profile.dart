import 'package:final_year/features/controllers/profile.dart';
import 'package:final_year/utils/constants/colors.dart';
import 'package:final_year/utils/widgets/button.dart';
import 'package:final_year/utils/widgets/custom_appbar.dart';
import 'package:final_year/utils/widgets/progress_indicator.dart';
import 'package:final_year/utils/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Colors.white,
          appBar: customAppBAr(
              text: 'Create Profile',
              textColor: AppColors.boldTextColor,
              fontSize: 16.sp),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 10.w, right: 10.w, bottom: 50.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inpuutField(hintText: 'Date of Birth'),
                      inpuutField(hintText: 'Place of Birth'),
                      inpuutField(hintText: 'Date of Birth'),
                      inpuutField(hintText: 'Height'),
                      inpuutField(hintText: 'Weight'),
                      inpuutField(hintText: 'Eye Color'),
                      inpuutField(hintText: 'Address'),
                      Row(
                        children: [
                          Expanded(child: inpuutField(hintText: 'City')),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(child: inpuutField(hintText: 'State'))
                        ],
                      ),
                      inpuutField(hintText: 'Zip Code'),
                      customButton(
                          text: 'Create Profile',
                          onTap: () => controller.createProfile())
                    ],
                  ),
                ),
                controller.isProfileCreating.value == true
                    ? Positioned(
                        top: (MediaQuery.sizeOf(context).height / 2) - 100.h,
                        left: (MediaQuery.sizeOf(context).width / 2) - 15.w,
                        child: progressIndicator())
                    : Container(),
              ],
            ),
          ),
        ));
  }
}
