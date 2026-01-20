import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/typography.dart';
import '../../data/models/merchant_detail.dart';

class MerchantTag extends StatelessWidget {
  const MerchantTag({super.key, required this.merchant});

  final MerchantDetail merchant;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5.h,
      children: [
        Stack(
          alignment: AlignmentGeometry.topRight,
          children: [
            SizedBox(height: 60, width: 60, child: Image.asset(merchant.image)),
            if (merchant.isActive)
              Container(
                height: 11,
                width: 11,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.white),
                  color: AppColors.k24C78B,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.white,
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
          ],
        ),
        Text(merchant.name, style: Avenir.w5.copyWith(fontSize: 12.spMin)),
      ],
    );
  }
}
