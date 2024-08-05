/*
CategoryListView: TO view all categories as circular icon and name
 */
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trailing_e_commerce_app/core/constants/app_colors.dart';
import '../../providers/providers.dart';
import '../widgets.dart';



class CategoryListView extends ConsumerWidget {
  const CategoryListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCategories = ref.watch(categoriesProvider);

    return asyncCategories.when(
        data: (categories) {
          return SizedBox(
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
                        image: DecorationImage(
                          image: NetworkImage(category.image),
                          fit: BoxFit.cover,
                        ),
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
          );
        },
        loading: () => const Center(child: ThreeDotsProgressIndicator()),
        error: (err, stack) => errorMsg());
  }
}
