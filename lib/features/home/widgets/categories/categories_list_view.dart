/*
CategoryListView: TO view all categories as circular icon and name
 */
import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor.withOpacity(0.2),
                  ),
                  child: Icon(
                    category.icon,
                    color: primaryColor,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  category.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 20,
            );
          },
        ),
      ),
    );
  }
}

//todo must be replaced

class CategoryItem {
  final IconData icon;
  final String name;

  CategoryItem({
    required this.icon,
    required this.name,
  });
}

final categories = [
  CategoryItem(
    icon: Icons.shopping_bag,
    name: 'T-Shirt',
  ),
  CategoryItem(
    icon: Icons.shopping_bag,
    name: 'Pant',
  ),
  CategoryItem(
    icon: Icons.shopping_bag,
    name: 'Dress',
  ),
  CategoryItem(
    icon: Icons.shopping_bag,
    name: 'Jacket',
  ),
  CategoryItem(
    icon: Icons.shopping_bag,
    name: 'Bags',
  ),
];
