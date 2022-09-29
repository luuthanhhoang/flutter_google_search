import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/colors.dart';
import 'package:flutter_google_clone_own/widgets/mobile/mobile_footer.dart';
import 'package:flutter_google_clone_own/widgets/search.dart';
import 'package:flutter_google_clone_own/widgets/web/search_buttons.dart';
import 'package:flutter_google_clone_own/widgets/web/translation_buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: SizedBox(
          width: size.width * 0.39,
          child: const DefaultTabController(
              length: 2,
              child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.blue,
                  indicatorColor: Colors.blue,
                  tabs: [
                    Tab(
                      text: "Tất cả",
                    ),
                    Tab(
                      text: "Hình ảnh",
                    )
                  ])),
        ),
        actions: [
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/images/more-apps.svg",
              color: primaryColor,
            ),
            color: primaryColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10).copyWith(right: 10),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xff1a73eb),
              child: const Text(
                "Đăng nhập",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Search(),
                        SizedBox(
                          height: 20,
                        ),
                        SearchButtons(),
                        SizedBox(
                          height: 20,
                        ),
                        TranslationButtons()
                      ],
                    )
                  ],
                ),
              ),
              const MobileFooter()
            ],
          )),
    );
  }
}
