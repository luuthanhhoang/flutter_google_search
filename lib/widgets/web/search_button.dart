import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/colors.dart';

class SearchButton extends StatelessWidget {
  final String title;
  const SearchButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
      onPressed: () {},
      elevation: 0,
      color: searchColor,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      child: Text(title),
    );
  }
}
