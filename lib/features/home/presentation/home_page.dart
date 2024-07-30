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
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child:       Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Header SECTION that shows user's location and notification
                    HomeTitle(),
                    HomeHeader(),
                    SizedBox(height: 10),
                    //Search Bar SECTION with filters
                    HomeSearchBar(),
                    SizedBox(height: 20),
                    //Sales and ads slider SECTION
                    SaleAdsSlider(),
                    SizedBox(height: 10),
                    //Categories SECTION: shows the title and a list of all categories
                    CategoryHeader(),
                    CategoryListView(),
                    SizedBox(height: 20),
                    //Flash Sale SECTION : shows the sale on categorized products
                    FlashSaleHeader(),
                    //left time on the current sale
                    SizedBox(height: 20),
                    SaleCategoryListView(),
                    // products that have sale on category
                    SizedBox(height: 20),

                  ],
                ),
              ),
              //all products based on selected category on sale
              FlashProductsView(),
              //space to make sure all items showed up
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  height: 50,
                ),
              ),
            ],
          ),
        )
      ),
      // Navigation bar SECTION
      bottomNavigationBar: const NavBar(),
    );
  }
}
