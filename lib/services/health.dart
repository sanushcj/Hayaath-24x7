import 'dart:convert';
import 'dart:developer';

import 'package:hayaath_24x7/services/healthAPI/api.dart';
import 'package:http/http.dart' as http;
import 'package:hayaath_24x7/model/Articles/articles.dart';

class HealthApi {
  var baseurl =
      "https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=$healthAPIKey";

  Future<List<Article>> GetHealthNews() async {
    var healthReady = await http.get(Uri.parse(baseurl));

    if (healthReady.statusCode == 200) {
       log('Sathanamkayyilund');
      var BodyHealth = jsonDecode(healthReady.body);
      List<dynamic> bodyH = await BodyHealth['articles'];
      List<Article> HealthAPI =
          await bodyH.map((item) => Article.fromJson(item)).toList();
// var HealthData = Article.fromJson(BodyHealth);
      log(HealthAPI.length.toString());
// HealthAPI.length
      return HealthAPI;
    } else {log('nuuuuuuuuuuuuuuuuuuuu');
      throw ("Can't get the article");
    }
  }
}
