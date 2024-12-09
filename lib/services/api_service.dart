import 'package:google_clone/config/api_keys.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../config/api_json.dart';

class ApiService {
  bool isDummyData = true;

  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = '0'}) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains(' ')
            ? queryTerm.split(' ').join('%20')
            : queryTerm;
        //search%20word , + is also possible

        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'),
        );

        if (response.statusCode == 200) {
          final jsonData = response.body;
          final resData = json.decode(jsonData);
          print('resData $resData');
          return resData;
        }
      }
    } catch (e) {
      print(
        e.toString(),
      );
    }
    return apiResponse;
  }
}
