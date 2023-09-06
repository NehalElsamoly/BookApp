// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';
import '../../../../../core/app_router.dart';
import '../../../../../core/assets.dart';
import '../../../../../core/styles.dart';
import '../../../data/model/book_model/book_model.dart';
import '../../viewmodel/details/details_cubit.dart';
import '../../viewmodel/images/images_cubit.dart';
import '../../viewmodel/similars/similar_cubit.dart';
import 'details_book_information.dart';
import 'details_custom_appbar.dart';
import 'details_data_section.dart';
import 'details_similar_like_listviw.dart';
import 'detials_buttons_actions.dart';
import 'fetured_image_item.dart';
import 'fetured_rating_item.dart';

class HomeNewestItem extends StatelessWidget {
  final BookModel book;
  const HomeNewestItem({
    Key? key,
    required this.book,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kdetailsView, extra: book);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h),
        child: SizedBox(
            height: 150.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FeturedImageItem(
                    url: book.volumeInfo?.imageLinks?.thumbnail,
                    aspectRatio: 2.7 / 4),
                SizedBox(
                  width: 29.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // width: double.infinity,
                        child: Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: Styles.textStyle20
                                .copyWith(fontFamily: Styles.kgtsFont),
                            book.volumeInfo!.title!),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      book.volumeInfo!.authors!.isNotEmpty
                          ? Text(
                              ' ${book.volumeInfo!.authors![0]} ',
                              style: Styles.textStyle14.copyWith(
                                  color: kgreyColor,
                                  fontWeight: FontWeight.normal),
                            )
                          : Text(
                              ' Authors Not konwn ',
                              style: Styles.textStyle14.copyWith(
                                  color: kgreyColor,
                                  fontWeight: FontWeight.normal),
                            ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              '99.9\$',
                              style: Styles.textStyle14
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            const FeturedRatingItem()
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
