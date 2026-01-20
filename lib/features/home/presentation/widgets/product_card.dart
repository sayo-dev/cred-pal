import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/layout.dart';
import '../../data/models/product_detail.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.detail});

  final ProductDetail detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161.sp,
      padding: EdgeInsets.only(top: 5.h, bottom: 14.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(.1),
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(
                  detail.image,
                  height: 96,
                ).cPad(left: 24, right: 24),
              ),

              Positioned(
                left: 6,
                child: Container(
                  height: 50,
                  width: 50,
                  padding: EdgeInsets.symmetric(
                    vertical: 7.h,
                    horizontal: 10.w,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(.1),
                        offset: const Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: detail.source != null
                      ? Image.asset(detail.source!, fit: BoxFit.scaleDown)
                      : RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Pay',
                            style: Avenir.w5.copyWith(fontSize: 12.spMin),
                            children: [
                              TextSpan(text: '\n'),
                              TextSpan(
                                text: detail.discount,
                                style: Avenir.w8.copyWith(
                                  fontSize: 14.spMin,
                                  color: AppColors.k274FED,
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
            ],
          ),

          h(13),
          Text(
            detail.name,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: Avenir.w8.copyWith(fontSize: 14.spMin, letterSpacing: -.3),
          ).cPad(left: 10, right: 10),

          h(8),
          Row(
            children: [
              Text(
                detail.price,
                style: Avenir.w8.copyWith(
                  fontSize: 14.spMin,
                  overflow: TextOverflow.ellipsis,

                  color: AppColors.k274FED,
                ),
              ),
              w(14),
              Flexible(
                child: Text(
                  detail.oldPrice,
                  style: Avenir.w5.copyWith(
                    fontSize: 12.spMin,
                    overflow: TextOverflow.ellipsis,

                    color: AppColors.kB3B3CC,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            ],
          ).cPad(left: 14, right: 14),
        ],
      ),
    );
  }
}
