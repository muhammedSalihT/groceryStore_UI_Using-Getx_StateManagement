import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/home_screen/controllers/products_details_controller.dart';
import 'package:grocery_app/widgets/product_detail_widget.dart';

class ProductsListWidget extends StatelessWidget {
  ProductsListWidget({
    Key? key,
  }) : super(key: key);

  final productsListController =Get.put(ProductsListController());

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 700,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1 / 1.95,
          crossAxisCount: 3,
        ),
        itemCount: productsListController.productdetails.length,
        itemBuilder: (context, index) {
          return ProductDetailsWidget(index: index, odd: true, even: false);
        },
      ),
    );
  }
}
