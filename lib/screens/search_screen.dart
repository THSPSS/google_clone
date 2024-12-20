import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/services/api_service.dart';
import 'package:google_clone/widgets/search_result_component.dart';

import '../widgets/search_footer.dart';
import '../widgets/search_header.dart';
import '../widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    //change browser title
    return Title(
      color: Colors.blue,
      title: searchQuery,
      child: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //web header
              const SearchHeader(),
              //tabs for news and images e.g
              Padding(
                padding: EdgeInsets.only(left: size.width <= 768 ? 5 : 150.0),
                child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal, child: SearchTabs()),
              ),
              const Divider(
                thickness: 0.3,
              ),
              //search results
              FutureBuilder(
                  future: ApiService().fetchData(
                    queryTerm: searchQuery,
                    start: start,
                  ),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: size.width <= 768 ? 10 : 150,
                              right: size.width < 768 ? 10 : 0,
                              top: 12,
                            ),
                            //search info
                            child: Text(
                              'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)',
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color(0xFF70757a),
                              ),
                            ),
                          ),
                          //search results
                          ListView.builder(
                              shrinkWrap: true,
                              physics:
                                  const NeverScrollableScrollPhysics(), // Disable ListView's scrolling
                              itemCount: snapshot.data?['items'].length,
                              itemBuilder: (context, i) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width <= 768 ? 10 : 150,
                                    right: size.width < 768 ? 10 : 0,
                                    top: 10,
                                  ),
                                  child: SearchResultComponent(
                                    text: snapshot.data?['items'][i]['title'],
                                    link: snapshot.data?['items'][i]['link'],
                                    linkToGo: snapshot.data?['items'][i]
                                        ['formattedUrl'],
                                    description: snapshot.data?['items'][i]
                                        ['snippet'],
                                  ),
                                );
                              }),
                          //pagination button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  if (start != '0') {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => SearchScreen(
                                          searchQuery: searchQuery,
                                          start: (int.parse(start) - 10)
                                              .toString(),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: const Text('< Prev',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: blueColor,
                                    )),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SearchScreen(
                                        searchQuery: searchQuery,
                                        start:
                                            (int.parse(start) + 10).toString(),
                                      ),
                                    ),
                                  );
                                },
                                child: const Text('Next >',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: blueColor,
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const SearchFooter(),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
              //pagination button
              // SizedBox(
              //   width: double.infinity,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       TextButton(
              //         onPressed: () {
              //           if (start != '0') {
              //             Navigator.of(context).push(
              //               MaterialPageRoute(
              //                 builder: (context) => SearchScreen(
              //                   searchQuery: searchQuery,
              //                   start: (int.parse(start) - 10).toString(),
              //                 ),
              //               ),
              //             );
              //           }
              //         },
              //         child: const Text('< Prev',
              //             style: TextStyle(
              //               fontSize: 15,
              //               color: blueColor,
              //             )),
              //       ),
              //       const SizedBox(
              //         width: 30,
              //       ),
              //       TextButton(
              //         onPressed: () {
              //           Navigator.of(context).push(
              //             MaterialPageRoute(
              //               builder: (context) => SearchScreen(
              //                 searchQuery: searchQuery,
              //                 start: (int.parse(start) + 10).toString(),
              //               ),
              //             ),
              //           );
              //         },
              //         child: const Text('Next >',
              //             style: TextStyle(
              //               fontSize: 15,
              //               color: blueColor,
              //             )),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 30,
              // ),
              // const SearchFooter(),
            ],
          ),
        )),
      ),
    );
  }
}
