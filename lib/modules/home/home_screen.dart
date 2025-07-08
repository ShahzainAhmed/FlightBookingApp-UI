import 'package:defer_pointer/defer_pointer.dart';
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
    return DeferredPointerHandler(
      child: Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: Get.height * 0.38,
              width: Get.width,
              color: AppColors.kPrimaryColor,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h),
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
                          mainAxisAlignment: MainAxisAlignment.center,
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
                        Spacer(),
                        Icon(Icons.notifications,
                            color: AppColors.kWhiteColor, size: 30)
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Securely Book \nyour Flight Ticket",
                      style: AppTypography.kExtraBold30
                          .copyWith(color: AppColors.kWhiteColor),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: Get.height * 0.28,
              left: 20.w,
              right: 20.w,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                height: Get.height * 0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.kBlackColor.withAlpha(24),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: DeferPointer(
                  paintOnTop: true,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: Get.width,
                      height: 44.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        onPressed: () => debugPrint("Button Pressed!"),
                        child: Text(
                          "Search",
                          style: AppTypography.kMedium18
                              .copyWith(color: AppColors.kWhiteColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
