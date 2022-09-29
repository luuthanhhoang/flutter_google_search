import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/colors.dart';

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(title, style: const TextStyle(color: blueColor)),
    );
  }
}
