import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
              horizontal: size.width < 768 ? 10 : 150, vertical: 15),
          child: Row(
            children: [
              Text(
                "Việt Nam",
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.circle,
                color: Color(0xff70757a),
                size: 12,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                '171 Minh Khai, Hai Bà Trưng, Hà Nội',
                style: TextStyle(fontSize: 14, color: primaryColor),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 0,
          height: 9,
          color: Colors.black26,
        ),
        Container(
          color: footerColor,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(children: [
            Text(
              'Giúp đỡ',
              style: TextStyle(color: Colors.grey[700], fontSize: 15),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Gửi phản hồi',
              style: TextStyle(color: Colors.grey[700], fontSize: 15),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Chính sách',
              style: TextStyle(color: Colors.grey[700], fontSize: 15),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Điều khoản',
              style: TextStyle(color: Colors.grey[700], fontSize: 15),
            ),
            const SizedBox(
              width: 20,
            ),
          ]),
        )
      ],
    );
  }
}
