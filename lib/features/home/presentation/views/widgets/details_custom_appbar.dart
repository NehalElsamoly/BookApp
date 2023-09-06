import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../viewmodel/details/details_cubit.dart';

class DetailsCustomAppBar extends StatelessWidget {
  const DetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 38.h, bottom: 20.h),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
                BlocProvider.of<DetailsCubit>(context).closepage();
              },
              icon: const Opacity(opacity: .6, child: Icon(Icons.close))),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Opacity(
                opacity: .6,
                child: Icon(
                  FontAwesomeIcons.cartShopping,
                ),
              ))
        ],
      ),
    );
  }
}
