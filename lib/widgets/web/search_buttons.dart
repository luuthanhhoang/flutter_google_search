import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/widgets/web/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SearchButton(title: "Tìm kiếm trên Google"),
                SizedBox(
                  width: 10,
                ),
                SearchButton(title: "Xem trang đầu tiên tìm được")
              ],
            )
          ],
        )
      ],
    );
  }
}
