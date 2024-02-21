import 'package:get_x/get_x/18_getx_api_fetching/product_module/models/product_model.dart';
import 'package:http/http.dart' as http;


class ApiService{
  static var client = http.Client();

  static Future<List<Welcome>> fetchProducts() async {
    var response = await client.get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json'));

    if(response.statusCode==200){
      var jsonString = response.body;
      return welcomeFromJson(jsonString);
    }
    else{
      List<Welcome> kng = [];
      return kng;
    }
  }
}