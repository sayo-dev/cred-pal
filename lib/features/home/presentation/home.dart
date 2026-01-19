import 'package:cred_pal/core/constants/app_resources/resources.dart';
import 'package:cred_pal/core/utils/layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/typography.dart';
import '../../../core/utils/extensions.dart';

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
        ],
      ),
    );
  }
}

class ProductDetail {
  final String image;
  final String name;
  final String price;
  final String oldPrice;
  final String? discount;
  final String? source;

  ProductDetail({
    required this.image,
    required this.name,
    required this.price,
    required this.oldPrice,
    this.discount,
    this.source,
  });
}

final products = [
  ProductDetail(
    image: Images.product1,
    name: 'Nokia G20',
    price: '₦ 39,780',
    oldPrice: '₦ 88,000',
    discount: '40%',
  ),
  ProductDetail(
    image: Images.product2,
    name: 'iPhone XS Max 4GB..',
    price: '₦ 295,999',
    oldPrice: '₦ 315,000',
  ),
  ProductDetail(
    image: Images.product3,
    name: 'Anker Soundcore..',
    price: '₦ 39,780',
    oldPrice: '₦ 88,000',
  ),
  ProductDetail(
    image: Images.product4,
    name: 'iPhone 12 Pro',
    price: '₦ 490,500',
    oldPrice: '₦ 515,000',
  ),
];

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.detail});

  final ProductDetail detail;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: [
          Stack(
            children: [
              Image.asset(detail.image, height: 96).cPad(left: 24, right: 24),
              Positioned(
                left: 2,
                child: Container(
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
                        offset: Offset(0, 4),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Pay',
                      style: Avenir.w5.copyWith(fontSize: 12.spMin),
                      children: [
                        TextSpan(
                          text: '\n',
                          style: Avenir.w5.copyWith(
                            fontSize: 12.spMin,
                            color: AppColors.k274FED,
                          ),
                        ),
                        TextSpan(
                          text: '40%',
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
            textAlign: TextAlign.left,
            style: Avenir.w8.copyWith(fontSize: 14.spMin),
          ).cPad(left: 10),

          h(8),
          Row(
            children: [
              Text(
                detail.price,
                style: Avenir.w8.copyWith(
                  fontSize: 14.spMin,
                  color: AppColors.k274FED,
                ),
              ),
              w(14),
              Text(
                detail.oldPrice,
                style: Avenir.w5.copyWith(
                  fontSize: 12.spMin,
                  color: AppColors.kB3B3CC,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ).cPad(left: 14, right: 14),
        ],
      ),
    );
  }
}
