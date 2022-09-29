import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          SearchTab(
            isActive: true,
            text: "Tất cả",
            icon: Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: "Hình ảnh",
            icon: Icons.image,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: "Bản đồ",
            icon: Icons.map,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: "Tin tức",
            icon: Icons.article,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: "Mua sắm",
            icon: Icons.shop,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: "Nhiều hơn",
            icon: Icons.more,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
