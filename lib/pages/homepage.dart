import 'package:flutter/material.dart';
import '01_home_category_page/home_category_page.dart';
import '02_recipe_page/recipe_page.dart';
import '03_food_snap_page/foodsnap_page.dart';
import '04_explore_page/explore_page.dart';
import '05_more_page/more_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    const HomeCategoryPage(),
    const RecipePage(),
    const FoodSnapPage(),
    const ExplorePage(),
    const MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink[600],
        unselectedItemColor: Colors.grey[700],
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_max_sharp,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant_sharp,
              ),
              label: 'Recipes'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt_outlined,
              ),
              label: 'FoodSnap'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.search_sharp,
              ),
              label: 'Explore'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz_sharp,
              ),
              label: 'More'),
        ],
      ),
    );
  }
}
