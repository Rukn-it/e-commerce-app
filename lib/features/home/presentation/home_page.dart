/*
This code is the home page; search for SECTION to find main components
 */

import 'package:flutter/material.dart';

import '../widgets/flash_sale/sales_category.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Header SECTION that shows user's location and notification
                const HomeTitle(),
                const HomeHeader(),
                const SizedBox(height: 10),
                //Search Bar SECTION with filters
                const HomeSearchBar(),
                const SizedBox(height: 20),
                //Sales and ads slider SECTION
                const SaleAdsSlider(),
                const SizedBox(height: 10),
                //Categories SECTION: shows the title and a list of all categories
                const CategoryHeader(),
                const CategoryListView(),
                const SizedBox(height: 20),
                //Flash Sale SECTION : shows the sale on categorized products
                const FlashSaleHeader(),
                //left time on the current sale
                const SizedBox(height: 20),
                const SaleCategoryListView(),
                // products that have sale on category
                const SizedBox(height: 20),
                FlashProductsView(),
                // current category products
              ],
            ),
            //Floating Navigation bar SECTION
            const Positioned.fill(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: NavBar(),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
