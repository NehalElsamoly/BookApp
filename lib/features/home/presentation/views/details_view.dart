// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/features/home/presentation/viewmodel/similars/similar_cubit.dart';
import 'package:untitled8/features/home/presentation/views/widgets/details_view_body.dart';

import '../../data/model/book_model/book_model.dart';

class DetailsView extends StatefulWidget {
  DetailsView({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookModel book;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarCubit>(context)
        .fetchSimilarBooks(bookModel: widget.book);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsViewBody(bookModel: widget.book),
    );
  }
}
