import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mashine_test/controllres/product_controllers.dart';
import 'package:mashine_test/widgets/product_tile.dart';


class HomePageView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text("Rest API Example"),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 10
          ),
          Expanded(
            child: Obx(
                  () {
                if (productController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.separated(
                    itemCount: productController.productList.length,
                    itemBuilder: (context, index) {
                      return ProductTile(productController.productList[index]);
                    },
                    separatorBuilder: ( context, int index) {
                      return const Divider(thickness: 10,color: Colors.black26,);
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}