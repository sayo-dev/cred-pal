import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension WidgetXX on Widget {
  Widget get hPad => Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: this,
  );

  Widget cPad({double? left, double? right, double? top, double? bottom}) =>
      Padding(
        padding: EdgeInsets.only(
          left: left?.w ?? 0,
          right: right?.w ?? 0,
          top: top?.h ?? 0,
          bottom: bottom?.h ?? 0,
        ),
        child: this,
      );
}
