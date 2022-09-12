import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/constends/colors.dart';
import 'package:grocery_app/home_screen/controllers/products_details_controller.dart';
import 'package:grocery_app/widgets/text_widget.dart';

class ProductDetailsWidget extends StatelessWidget {
  ProductDetailsWidget({
    Key? key,
    required this.index,
    required this.odd,
    required this.even,
  }) : super(key: key);

  final int index;
  final bool odd;
  final bool even;

  final productsListController = Get.find<ProductsListController>();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final data = productsListController.productdetails[index];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: .4, vertical: .5),
      width: size.width / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                data.productImage,
                height: 145,
                fit: BoxFit.fitHeight,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List.generate(
                        3,
                        (index) => const Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      width: 40,
                      child: Material(
                        color: blackColor.withOpacity(.6),
                        borderRadius: BorderRadius.circular(10),
                        child: const Center(
                            child: Text(
                          "3 Km",
                          style: TextStyle(color: whiteColor),
                        )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Visibility(
            visible: index.isOdd ? even : odd,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "0000/-",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough, color: greyColor),
                ),
                SizedBox(
                  height: 20,
                  width: 50,
                  child: Material(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(5),
                    child: const Center(
                      child: Text(
                        "00%",
                        style: TextStyle(color: whiteColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const StdTextWidget(text: "00.00/-"),
          const StdTextWidget(text: "Product Service"),
          const StdTextWidget(text: "Title Product"),
          Visibility(
            visible: index.isEven ? even : odd,
            child: const StdTextWidget(text: "Service Title"),
          ),
        ],
      ),
    );
  }
}
