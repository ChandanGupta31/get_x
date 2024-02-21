import 'package:get/get.dart';
import 'package:get_x/get_x/18_getx_api_fetching/api_module/api_service.dart';
import 'package:get_x/get_x/18_getx_api_fetching/product_module/models/product_model.dart';

class ProductController extends GetxController {

  var isLoading = true.obs;
  Rx<List<Welcome>> productList = Rx([]);

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try{
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if(products!=null){
        productList.value = products;
      }
    }
    finally {
      isLoading(false);
    }
  }
}