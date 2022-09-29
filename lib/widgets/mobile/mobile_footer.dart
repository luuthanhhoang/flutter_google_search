import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/colors.dart';
import 'package:flutter_google_clone_own/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      padding: const EdgeInsets.all(5),
      child: Wrap(
        children: const [
          FooterText(title: "Về chúng tôi"),
          SizedBox(
            width: 10,
          ),
          FooterText(title: "Quảng cáo"),
          SizedBox(
            width: 10,
          ),
          FooterText(title: "Kinh doanh"),
          SizedBox(
            width: 10,
          ),
          FooterText(title: "Làm thế nào để tìm kiếm từ khóa"),
          SizedBox(
            width: 10,
          ),
          FooterText(title: "Chính sách"),
          SizedBox(
            width: 10,
          ),
          FooterText(title: "Điều khoản"),
          SizedBox(
            width: 10,
          ),
          FooterText(title: "Cài đặt"),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
