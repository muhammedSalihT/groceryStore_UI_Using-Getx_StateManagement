import 'package:flutter/material.dart';
import 'package:grocery_app/constends/colors.dart';
import 'package:grocery_app/home_screen/views/appbar_widget.dart';
import 'package:grocery_app/home_screen/views/categorie_heding_widget.dart';
import 'package:grocery_app/home_screen/views/gridviewbar_widget.dart';
import 'package:grocery_app/home_screen/views/banner_widget.dart';
import 'package:grocery_app/home_screen/views/bannertitle_widget.dart';
import 'package:grocery_app/home_screen/views/main_categorie_widget.dart';
import 'package:grocery_app/home_screen/views/productslist_widget.dart';
import 'package:grocery_app/home_screen/views/top_users.dart';
import 'package:grocery_app/widgets/horizontal_view_widget.dart';
import 'package:grocery_app/widgets/product_detail_widget.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';

import '../../widgets/tab_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80), child: AppBarWidget()),
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 280,
                    height: 30,
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      labelColor: blackColor,
                      unselectedLabelColor: greyColor,
                      tabs: [
                        Tab(
                          text: "Tab 1",
                        ),
                        Tab(
                          text: "Tab 2",
                        ),
                        Tab(
                          text: "Tab 3",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OfferBannerWidget(),
                              const BannerTitleWidget(),
                              const GridViewBarWidget(),
                              HorizontalViewWidget(
                                horizontalViewWidget: (context, index) {
                                  return MainCategoryWidget(index: index);
                                },
                              ),
                              const CategorieHedingWidget(
                                  categorieName: "FOR U"),
                              ProductsListWidget(),
                              const CategorieHedingWidget(
                                  categorieName: "TOP STORES"),
                              HorizontalViewWidget(
                                horizontalViewWidget: (context, index) {
                                  return TopUsers(
                                    index: index,
                                  );
                                },
                              ),
                              const CategorieHedingWidget(
                                  categorieName: "TOP PRODUCTS"),
                              ProductsListWidget(),
                              const CategorieHedingWidget(
                                  categorieName: "SHOP BY CATEGORY"),
                              LimitedBox(
                                maxHeight: 80,
                                child: ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      width: size.width / 2.25,
                                      decoration: BoxDecoration(
                                        color: greyColor.withOpacity(.08),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundColor: Color(0XFF0079b3),
                                            child: Iconify(
                                              Ph.stack_fill,
                                              color: whiteColor,
                                              size: 30,
                                            ),
                                          ),
                                          Text(
                                            "Sub Category",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              LimitedBox(
                                maxHeight: 240,
                                child: ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return ProductDetailsWidget(
                                      index: index,
                                      even: true,
                                      odd: false,
                                    );
                                  },
                                ),
                              ),
                              const CategorieHedingWidget(
                                  categorieName: "LATEST POSTS"),
                              ProductsListWidget(),
                              const SizedBox(
                                height: 190,
                              )
                            ],
                          ),
                        ),
                        const TabWidget(tabName: "Tab 2"),
                        const TabWidget(tabName: "Tab 3")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
