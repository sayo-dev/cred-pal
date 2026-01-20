import 'package:cred_pal/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String avenir = 'Avenir';
const String axiforma = 'Axiforma';
const String productSans = 'Product Sans';

mixin Avenir on TextStyle {
  static TextStyle w3 = TextStyle(
    fontFamily: avenir,
    fontWeight: FontWeight.w300,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );

  static TextStyle w4 = TextStyle(
    fontFamily: avenir,
    fontWeight: FontWeight.w400,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );

  static TextStyle w5 = TextStyle(
    fontFamily: avenir,
    fontWeight: FontWeight.w500,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );

  static TextStyle w6 = TextStyle(
    fontFamily: avenir,
    fontWeight: FontWeight.w600,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );

  static TextStyle w7 = TextStyle(
    fontFamily: avenir,
    fontWeight: FontWeight.w700,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );
  static TextStyle w8 = TextStyle(
    fontFamily: avenir,
    fontWeight: FontWeight.w800,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );
  static TextStyle w9 = TextStyle(
    fontFamily: avenir,
    fontWeight: FontWeight.w900,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );
}

mixin Axiforma on TextStyle {
  static TextStyle w3 = TextStyle(
    fontFamily: axiforma,
    fontWeight: FontWeight.w300,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );

  static TextStyle w4 = TextStyle(
    fontFamily: axiforma,
    fontWeight: FontWeight.w400,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );

  static TextStyle w5 = TextStyle(
    fontFamily: axiforma,
    fontWeight: FontWeight.w500,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );

  static TextStyle w6 = TextStyle(
    fontFamily: axiforma,
    fontWeight: FontWeight.w600,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );

  static TextStyle w7 = TextStyle(
    fontFamily: axiforma,
    fontWeight: FontWeight.w700,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );
}

mixin ProductSans on TextStyle {
  static TextStyle w3 = TextStyle(
    fontFamily: productSans,
    fontWeight: FontWeight.w300,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );

  static TextStyle w4 = TextStyle(
    fontFamily: productSans,
    fontWeight: FontWeight.w400,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );
  static TextStyle w5 = TextStyle(
    fontFamily: productSans,
    fontWeight: FontWeight.w500,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );
  static TextStyle w6 = TextStyle(
    fontFamily: productSans,
    fontWeight: FontWeight.w600,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );
  static TextStyle w7 = TextStyle(
    fontFamily: productSans,
    fontWeight: FontWeight.w700,
    fontSize: 16.spMin,
    color: AppColors.k1A1A1A,
  );
}
