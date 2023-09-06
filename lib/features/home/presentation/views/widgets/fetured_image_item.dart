import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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

//todo: done

class FeturedImageItem extends StatelessWidget {
  const FeturedImageItem({
    Key? key,
    this.url,
    required this.aspectRatio,
  }) : super(key: key);
  final String? url;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: AspectRatio(
          aspectRatio: aspectRatio,
          child: url != null
              ? CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: url!,
                )
              : const Icon(Icons.accessible_forward_outlined)),
    );
  }
}
