import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../model/Articles/articles.dart';
import '../../services/trending/api.dart';

class HealthApi extends GetxController {

RxList<Article> healthAPIList = <Article>[].obs;
RxBool loading = true.obs;

@override
  void onInit() {
    getHealthNews();
    super.onInit();
  }
  
  String baseurl =
      'https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=$healthAPIKey';

Future<void> getHealthNews() async {

    http.Response healthReady = await http.get(Uri.parse(baseurl));
   try{ if (healthReady.statusCode == 200) {
      final dynamic bodyHealth = jsonDecode(healthReady.body);
      final List<dynamic> bodyH = await bodyHealth['articles'] ;
     healthAPIList.value =
          bodyH.map((dynamic item) => Article.fromJson(item)).toList();
          loading.value =false ;
    }}catch(e){
      log('noo data');
Get.snackbar('Check your connection', '$e');
    }
  }
  
}
