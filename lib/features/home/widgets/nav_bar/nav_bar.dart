import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/features/home/widgets/nav_bar/items.dart';

import '../../../product_details/presenation/product_details_screen.dart';
import '../../../wish_list/presentation/view/wish_list_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
//todo: must be changed to riverpod
  @override
  Widget build(BuildContext context) {
    final List<NavigationItem> items = [
      NavigationItem(
        filledIcon: Icons.home,
        outlinedIcon: Icons.home_outlined,
        isSelected: _selectedIndex == 0,
        onPressed: () => _onItemTapped(0),
      ),
      NavigationItem(
        filledIcon:  Icons.shopping_bag,
        outlinedIcon: Icons.shopping_bag_outlined,

        isSelected: _selectedIndex == 1,
        onPressed: () {
          _onItemTapped(1);
          Navigator.of(context).pushNamed( ProductDetailsScreen.routeName);
          _onItemTapped(0);

        },
      ),
      NavigationItem(
        filledIcon: Icons.favorite,
        outlinedIcon:Icons.favorite_outline,
        isSelected: _selectedIndex == 2,
        onPressed: () {
          _onItemTapped(2);
          Navigator.of(context).pushNamed( WishListScreen.routeName);
          _onItemTapped(0);

        },
      ),
      NavigationItem(
        filledIcon: Icons.person,
        outlinedIcon:Icons.person_outline,

        isSelected: _selectedIndex == 3,
        onPressed: () => _onItemTapped(3),
      ),
    ];

    return ClipRRect(

      borderRadius: const BorderRadius.all(Radius.circular(40)),
      child: BottomAppBar(
        color: Colors.black.withOpacity(0.8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),
      ),
    );
  }
}

