import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fetch_data/model/product_model.dart';
import 'package:getx_fetch_data/service/product_service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    getAllProducts();
    super.onInit();
  }

  Future<void> getAllProducts() async {
    try {
      isLoading(true);
      var products = await ProductService().getAllProduct();
      debugPrint('Product controller =>\n $products');
      productList.assignAll(products);
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
