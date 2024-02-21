import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/get_x/18_getx_api_fetching/product_module/controllers/product_controller.dart';

class ProductView extends StatelessWidget {
   ProductView({super.key});


   ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        if(productController.isLoading.value){
          return Center(child: CircularProgressIndicator());
        }
        else{
          return ListView.builder(
            itemCount: productController.productList.value.length,
            itemBuilder: (context, index){
              return Container(
                child: Text(
                  'Data Fetched Sucessufully \n Available to display now'
                ),
              );
            },
          );
        }
      }),
    );
  }
}
