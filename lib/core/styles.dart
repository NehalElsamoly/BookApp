import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static const kgtsFont = 'Gts';
  static final textStyle18 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp);
  static final textStyle20 =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 20.sp);
  static final textStyle14 =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 14.sp);
  static final textStyle16 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp);
  static final textStyle30 = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 30.sp, fontFamily: kgtsFont);
}
