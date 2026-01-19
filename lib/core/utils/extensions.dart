import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension WidgetXX on Widget {
  Widget get hPad => Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: this,
  );
}
