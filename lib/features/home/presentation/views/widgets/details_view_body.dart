// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles.dart';
import '../../../data/model/book_model/book_model.dart';
import '../../viewmodel/details/details_cubit.dart';
import '../../viewmodel/similars/similar_cubit.dart';
import 'details_book_information.dart';
import 'details_custom_appbar.dart';
import 'details_data_section.dart';
import 'details_similar_like_listviw.dart';
import 'detials_buttons_actions.dart';
import 'fetured_image_item.dart';
import 'fetured_rating_item.dart';

class DetailsViewBody extends StatelessWidget {
  final BookModel bookModel;

  const DetailsViewBody({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DetailsCustomAppBar(),

          //todo:can't work as it change state quick from omclock to other state as we call on nclic method
          BlocBuilder<DetailsCubit, DetailsState>(
            builder: (context, state) {
              if (state is DetailsChange) {
                return DetailsDataSection(bookModel: state.bookModel);
              } else if (state is DetailsLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return DetailsDataSection(bookModel: bookModel);
              }
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can See Similar like',
              style: Styles.textStyle14,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          const DetailsSimilarLikeListView(),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
