// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';
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

class FeturedRatingItem extends StatelessWidget {
  const FeturedRatingItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          size: 21,
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6.3.w,
        ),
        Text(
          '4.8',
          style: Styles.textStyle14,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          '(214)',
          style: Styles.textStyle14.copyWith(color: kgreyColor),
        )
      ],
    );
  }
}
