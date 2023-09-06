// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles.dart';
import '../../../data/model/book_model/book_model.dart';
import 'fetured_rating_item.dart';

class DetailsBookInformation extends StatelessWidget {
  const DetailsBookInformation({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            '${book.volumeInfo?.title}',
            style: Styles.textStyle30,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          '${book.volumeInfo?.authors?[0]}',
          style: Styles.textStyle18,
        ),
        SizedBox(
          height: 10.h,
        ),
        const FeturedRatingItem(),
      ],
    );
  }
}
