import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/colors.dart';
import 'package:flutter_google_clone_own/screens/search_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/google-logo.png',
            height: size.height * 0.12,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: size.width <= 768 ? size.width * 0.95 : size.width * 0.4,
          child: TextFormField(
            onFieldSubmitted: (value) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      SearchScreen(start: "0", searchQuery: value)));
            },
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: searchBorder),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    "assets/images/search-icon.svg",
                    color: searchBorder,
                    width: 1,
                    height: 1,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset('assets/images/mic-icon.svg'),
                )),
          ),
        )
      ],
    );
  }
}
