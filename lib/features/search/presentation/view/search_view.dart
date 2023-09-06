import 'package:flutter/material.dart';
import 'package:untitled8/features/search/presentation/view/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SearchViewBody(),
    ));
  }
}
