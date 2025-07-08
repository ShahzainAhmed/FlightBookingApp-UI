import 'package:flight_booking/resources/app_colors.dart';
import 'package:flight_booking/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  final String svgIcon;
  final String title;
  final VoidCallback onTap;
  const SearchBarWidget(
      {super.key,
      required this.title,
      required this.svgIcon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.kSmokeColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: title,
                border: InputBorder.none,
                hintStyle: AppTypography.kMedium14.copyWith(color: AppColors.kDarkGreyColor),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: SvgPicture.string(
              svgIcon,
              color: AppColors.kDarkGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
