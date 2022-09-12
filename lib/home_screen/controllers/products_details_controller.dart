import 'package:get/get.dart';
import 'package:grocery_app/home_screen/models/products_details_model.dart';


class ProductsListController extends GetxController {
  List<ProductDetailsModel> productdetails = [
    ProductDetailsModel(
        productImage:
            "assets/BLOG_trends-shaping-the-future-of-supermarkets-and-grocery-stores.webp"),
    ProductDetailsModel(
        productImage:
            "assets/canned-food-aisle-asian-supermarket-photograph-fruits-typical-photo-taken-march-52268225.jpg"),
    ProductDetailsModel(productImage: "assets/images.jpg"),
    ProductDetailsModel(productImage: "assets/images (1).jpg"),
    ProductDetailsModel(productImage: "assets/images (3).jpg"),
    ProductDetailsModel(
        productImage:
            "assets/c689-Restaurant-Aladdincart-Indian-and-Middle-Eastern-Grocery-Store-view.jpg"),
    ProductDetailsModel(
        productImage: "assets/istockphoto-1328991116-170667a.jpg"),
    ProductDetailsModel(
        productImage:
            "assets/c689-Restaurant-Aladdincart-Indian-and-Middle-Eastern-Grocery-Store-view.jpg"),
    ProductDetailsModel(productImage: "assets/images (2).jpg")
  ];
}
