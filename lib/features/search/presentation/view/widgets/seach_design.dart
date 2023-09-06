import 'package:flutter/material.dart';

class SearchDesign extends StatelessWidget {
  const SearchDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'search',
          suffixIcon: const Opacity(
            opacity: .6,
            child: Icon(
              Icons.search,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12))),
    );
  }
}
