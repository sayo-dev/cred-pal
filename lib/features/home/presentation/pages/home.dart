import 'package:cred_pal/core/constants/app_resources/resources.dart';
import 'package:cred_pal/core/utils/layout.dart';
import 'package:cred_pal/features/home/presentation/widgets/merchant_tag.dart';
import 'package:cred_pal/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/typography.dart';
import '../../../../core/utils/extensions.dart';
import '../../data/mocks/merchant_mock.dart';
import '../../data/mocks/product_mock.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Container(
            color: AppColors.kD0DAFF,
            padding: EdgeInsets.symmetric(vertical: 22.h),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pay later \neverywhere',
                    style: Avenir.w9.copyWith(fontSize: 28.spMin),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Shopping limit: ₦0',
                        style: Avenir.w5.copyWith(
                          fontSize: 12.spMin,
                          color: AppColors.k20294A,
                        ),
                      ),
                      h(10),
                      Row(
                        children: [
                          SvgPicture.asset(Vectors.info),

                          FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: AppColors.k274FED,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 8.h,
                                horizontal: 16.w,
                              ),
                            ),
                            child: Text(
                              'Activate Credit',
                              style: Axiforma.w5.copyWith(
                                fontSize: 13.spMin,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ).hPad,
            ),
          ),
          h(18),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: CupertinoSearchTextField(
                    prefixIcon: SvgPicture.asset(Vectors.searchNormal),
                    prefixInsets: EdgeInsetsGeometry.only(
                      left: 15.w,
                      right: 10.w,
                    ),
                    padding: EdgeInsetsGeometry.symmetric(vertical: 12.h),
                    backgroundColor: AppColors.kF1F3FE,
                    borderRadius: BorderRadius.circular(20.r),
                    placeholder: 'Search for products or stores',
                    placeholderStyle: Avenir.w4.copyWith(
                      fontSize: 12.spMin,
                      color: AppColors.k9494B8,
                    ),
                    style: Avenir.w4.copyWith(fontSize: 12.spMin),
                  ),
                ),
                w(20),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 10.w,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.kF4F5FE.withOpacity(.8),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: SvgPicture.asset(Vectors.scan),
                ),
              ],
            ).hPad,
          ),
          h(24),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 14.h,
                      bottom: 17.h,
                      left: 21.w,
                      right: 13.w,
                    ),
                    decoration: BoxDecoration(color: AppColors.kF1F3FE),
                    child: Column(
                      spacing: 26.h,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            spacing: 24.w,
                            children: products
                                .map((detail) => ProductCard(detail: detail))
                                .toList(),
                          ),
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            spacing: 24.w,
                            children: products.reversed
                                .map((detail) => ProductCard(detail: detail))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  h(33),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Featured Merchants',
                        style: Avenir.w9.copyWith(color: AppColors.k33334D),
                      ),
                      Text(
                        'View all',
                        style: ProductSans.w4.copyWith(
                          fontSize: 12.spMin,
                          color: AppColors.k274FED,
                        ),
                      ),
                    ],
                  ).hPad,
                  h(37),
                  Wrap(
                    spacing: 30.w,
                    runSpacing: 30.h,
                    children: merchants
                        .map((merchant) => MerchantTag(merchant: merchant))
                        .toList(),
                  ).hPad,
                  h(36),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
