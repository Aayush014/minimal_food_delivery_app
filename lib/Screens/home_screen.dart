import 'package:flutter/material.dart';
import 'package:minimal_food_delivery_app/Components/my_current_location.dart';
import 'package:minimal_food_delivery_app/Components/my_discription_box.dart';
import 'package:minimal_food_delivery_app/Components/my_food_tile.dart';
import 'package:minimal_food_delivery_app/Components/my_home_drawer.dart';
import 'package:minimal_food_delivery_app/Components/my_sliver_appbar.dart';
import 'package:minimal_food_delivery_app/Components/my_tab_bar.dart';
import 'package:minimal_food_delivery_app/Models/food.dart';
import 'package:minimal_food_delivery_app/Models/restaurant.dart';
import 'package:minimal_food_delivery_app/Screens/food_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filteredMenuCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((element) => element.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) =>
      FoodCategory.values.map(
        (e) {
          List<Food> categoryMenu = _filteredMenuCategory(e, fullMenu);
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: categoryMenu.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final food = categoryMenu[index];
              return MyFoodTile(
                food: food,
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FoodScreen(food: food),
                )),
              );
            },
          );
        },
      ).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyHomeDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppbar(
            title: MyTabBar(
              tabController: _tabController,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const MyCurrentLocation(),
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, value, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(value.menu),
          ),
        ),
      ),
    );
  }
}
