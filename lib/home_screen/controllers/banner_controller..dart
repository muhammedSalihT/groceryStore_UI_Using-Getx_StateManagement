// ignore: file_names
import 'package:get/get.dart';
import 'package:grocery_app/home_screen/models/banner_model.dart';

class BannerController extends GetxController {
  List<BannerModel> modelList = [
    BannerModel(
        offerPercentage: "50% off",
        image: "assets/istockphoto-1328991116-170667a.jpg",
        orginalPrize: "AED 600/-",
        offerPrize: "AED 300/-"),
    BannerModel(
        offerPercentage: "50% off",
        image:
            "assets/alt-593ecb243e2ba-3814-345dbcf80631a29c1fec1d17f919669a@1x.jpg",
        orginalPrize: "AED 500/-",
        offerPrize: "AED 250/-"),
    BannerModel(
        offerPercentage: "50% off",
        image:
            "assets/canned-food-aisle-asian-supermarket-photograph-fruits-typical-photo-taken-march-52268225.jpg",
        orginalPrize: "AED 1000/-",
        offerPrize: "AED 500/-")
  ];
}
