import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_fetch_data/cotroller/product_controller.dart';
import 'package:getx_fetch_data/model/product_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ProductController _productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX API Fetch Demo'),
      ),
      body: Obx(() {
        if (_productController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
              itemCount: _productController.productList.length,
              itemBuilder: (context, index) {
                Product _product = _productController.productList[index];
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              _product.imageLink,
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              color: Colors.blue,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _product.name,
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('Category: ${_product.brand}'),
                          ],
                        )),
                      ],
                    ),
                    Container(
                      color: Colors.grey[200],
                      height: 2,
                    )
                  ],
                );
              });
        }
      }),
    );
  }
}
