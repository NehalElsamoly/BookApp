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

class HomeImagesListView extends StatelessWidget {
  const HomeImagesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagesCubit, ImagesState>(
      builder: (context, state) {
        if (state is ImagesSuccess) {
          return SizedBox(
              height: 194.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemBuilder: (c, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            GoRouter.of(context).push(AppRouter.kdetailsView,
                                extra: state.books[index]);
                          },
                          child: FeturedImageItem(
                            url: state
                                .books[index].volumeInfo?.imageLinks?.thumbnail,
                            aspectRatio: 2.4 / 4,
                          ),
                        ),
                      )));
        } else if (state is ImagesFaile) {
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
