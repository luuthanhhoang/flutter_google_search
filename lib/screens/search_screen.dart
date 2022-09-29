import 'package:flutter/material.dart';
import 'package:flutter_google_clone_own/colors.dart';
import 'package:flutter_google_clone_own/services/api_services.dart';
import 'package:flutter_google_clone_own/widgets/search_footer.dart';
import 'package:flutter_google_clone_own/widgets/search_header.dart';
import 'package:flutter_google_clone_own/widgets/search_result_component.dart';
import 'package:flutter_google_clone_own/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  final String start;
  final String searchQuery;
  const SearchScreen({Key? key, required this.start, required this.searchQuery})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      color: Colors.blue,
      title: searchQuery,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchHeader(),
              Padding(
                padding: EdgeInsets.only(left: size.width < 768 ? 10 : 150),
                child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal, child: SearchTabs()),
              ),
              const Divider(
                height: 0,
                thickness: 0.3,
              ),
              FutureBuilder(
                  future: ApiService()
                      .fetchData(queryTerm: searchQuery, start: start),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: size.width < 768 ? 10 : 150, top: 12),
                            child: Text(
                              "Có ${snapshot.data?['searchInformation']['formattedTotalResults']} kết quả trong ${snapshot.data?['searchInformation']['formattedSearchTime']} giây.",
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xff70757a)),
                            ),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data?['items'].length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: size.width < 768 ? 10 : 150,
                                      top: 10),
                                  child: SearchResultComponent(
                                      link: snapshot.data?['items'][index]
                                          ['formattedUrl'],
                                      text: snapshot.data?['items'][index]
                                          ['title'],
                                      linkToGo: snapshot.data?['items'][index]
                                          ['link'],
                                      description: snapshot.data?['items']
                                          [index]['snippet']),
                                );
                              }),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      if (start != "0") {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SearchScreen(
                                                        start:
                                                            (int.parse(start) -
                                                                    10)
                                                                .toString(),
                                                        searchQuery:
                                                            searchQuery)));
                                      }
                                    },
                                    child: const Text(
                                      "< Trước",
                                      style: TextStyle(
                                          fontSize: 15, color: blueColor),
                                    )),
                                const SizedBox(
                                  width: 30,
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SearchScreen(
                                                      start: (int.parse(start) +
                                                              10)
                                                          .toString(),
                                                      searchQuery:
                                                          searchQuery)));
                                    },
                                    child: const Text(
                                      "Sau >",
                                      style: TextStyle(
                                          fontSize: 15, color: blueColor),
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const SearchFooter()
                        ],
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
