
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled8/features/search/presentation/view/widgets/seach_design.dart';
import 'package:untitled8/features/search/presentation/view/widgets/search_listview.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child:  Column(
        children: [
          SearchDesign(),
          SizedBox(
            height: 10,
          ),
          SearchListView()
        ],
      ),
    );
  }
}
