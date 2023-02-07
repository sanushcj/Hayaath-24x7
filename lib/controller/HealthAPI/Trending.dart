import 'dart:convert';
import 'package:get/get.dart';
import '../../model/Articles/articles.dart';
import 'package:http/http.dart' as http;
import '../../services/healthAPI/api.dart';

class HealthApi extends GetxController {

var healthAPIList = <Article>[].obs;
var loading = true.obs;

@override
  void onInit() {
    GetHealthNews();
    super.onInit();
  }
  
  String baseurl =
      "https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=$healthAPIKey";

GetHealthNews() async {
    http.Response healthReady = await http.get(Uri.parse(baseurl));
   try{ if (healthReady.statusCode == 200) {
      final dynamic bodyHealth = jsonDecode(healthReady.body);
      final List<dynamic> bodyH = await bodyHealth['articles'] ;
     healthAPIList.value =
          bodyH.map((dynamic item) => Article.fromJson(item)).toList();
          loading.value =false ;
    }}catch(e){
Get.snackbar('Check your connection', "$e");
    }
  }
  
}