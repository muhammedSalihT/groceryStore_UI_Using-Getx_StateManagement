import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/constends/box.dart';
import 'package:grocery_app/constends/colors.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:grocery_app/home_screen/controllers/banner_controller..dart';

class OfferBannerWidget extends StatelessWidget {
  OfferBannerWidget({
    Key? key,
  }) : super(key: key);

  final bannerController = Get.put(BannerController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.25,
      child: Swiper(
        autoplay: true,
        itemCount: bannerController.modelList.length,
        itemBuilder: (context, index) {
          final data = bannerController.modelList[index];
          return GridTile(
            footer: Container(
              height: 30,
              color: const Color.fromARGB(96, 255, 255, 255),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          data.offerPrize,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[200]),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data.orginalPrize,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[200],
                              decoration: TextDecoration.lineThrough),
                        ),
                        stdWidthBox,
                        Container(
                          width: size.width * .2,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Center(child: Text(data.offerPercentage)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(fit: BoxFit.cover, data.image),
            ),
          );
        },
      ),
    );
  }
}
