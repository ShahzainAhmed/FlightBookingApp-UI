import 'package:flight_booking/resources/app_assets.dart';
import 'package:flight_booking/resources/app_colors.dart';
import 'package:flight_booking/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.height * 0.38,
            width: Get.width,
            color: AppColors.kPrimaryColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        foregroundImage: AssetImage(AppAssets.kProfileAvatar),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: AppTypography.kMedium12
                                .copyWith(color: AppColors.kLightGreyColor),
                          ),
                          Text(
                            "Shahzain Ahmed",
                            style: AppTypography.kBold14
                                .copyWith(color: AppColors.kLightGreyColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
