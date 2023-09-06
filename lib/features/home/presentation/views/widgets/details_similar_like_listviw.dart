// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles.dart';
import '../../../data/model/book_model/book_model.dart';
import '../../viewmodel/details/details_cubit.dart';
import '../../viewmodel/similars/similar_cubit.dart';
import 'details_book_information.dart';
import 'detials_buttons_actions.dart';
import 'fetured_image_item.dart';
import 'fetured_rating_item.dart';

class DetailsSimilarLikeListView extends StatelessWidget {
  const DetailsSimilarLikeListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarCubit, SimilarState>(
      builder: (context, state) {
        if (state is SimilarSuccess) {
          return Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        BlocProvider.of<SimilarCubit>(context)
                            .onClickSimilar(bookModel: state.books[index]);
                        BlocProvider.of<DetailsCubit>(context)
                            .change(book: state.books[index]);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 6.w),
                        child: SizedBox(
                            height: 124.h,
                            child: FeturedImageItem(
                                aspectRatio: 2.6 / 4,
                                url: state.books[index].volumeInfo?.imageLinks
                                    ?.thumbnail)),
                      ),
                    )),
          );
        } else if (state is SimilarFaile) {
          return Center(
            child: Text(state.error),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
