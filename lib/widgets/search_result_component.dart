import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatefulWidget {
  final String link;
  final String text;
  final String linkToGo;
  final String description;
  const SearchResultComponent(
      {Key? key,
      required this.link,
      required this.text,
      required this.linkToGo,
      required this.description})
      : super(key: key);

  @override
  State<SearchResultComponent> createState() => _SearchResultComponentState();
}

class _SearchResultComponentState extends State<SearchResultComponent> {
  bool _showUnderline = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.link),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(widget.linkToGo))) {
                await launchUrl(Uri.parse(widget.linkToGo));
              }
            },
            onHover: (hovering) {
              setState(() {
                _showUnderline = true;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(widget.text,
                    style: TextStyle(
                        fontSize: 20,
                        color: blueColor,
                        decoration: _showUnderline
                            ? TextDecoration.underline
                            : TextDecoration.none))
              ],
            ),
          ),
        ),
        Text(
          widget.description,
          style: const TextStyle(fontSize: 14, color: primaryColor),
        )
      ],
    );
  }
}
