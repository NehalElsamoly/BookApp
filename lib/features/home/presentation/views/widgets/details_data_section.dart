// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles.dart';
import '../../../data/model/book_model/book_model.dart';
import 'details_book_information.dart';
import 'detials_buttons_actions.dart';
import 'fetured_image_item.dart';
import 'fetured_rating_item.dart';


class DetailsDataSection extends StatelessWidget {
  const DetailsDataSection({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 243.h,
            child: FeturedImageItem(
                url: bookModel.volumeInfo?.imageLinks?.thumbnail,
                aspectRatio: 2.6 / 4)),
        SizedBox(
          height: 20.h,
        ),
        DetailsBookInformation(book: bookModel),
        SizedBox(
          height: 10.h,
        ),
        DetailsButtonsAction(booModel: bookModel),
      ],
    );
  }
}
