import 'package:flutter/material.dart';
import 'package:getx_fetch_data/model/product_model.dart';
import 'package:getx_fetch_data/utils/http_helper.dart';

class ProductService {
  final HttpHelper _httpHelper = HttpHelper();
  Future<List<Product>> getAllProduct() async {
    var response = await _httpHelper.get('?brand=marienatie');
    var data = response as List;
    debugPrint('ProductService => $response');
    return data.map((product) => Product.fromJson(product)).toList();
  }
}
