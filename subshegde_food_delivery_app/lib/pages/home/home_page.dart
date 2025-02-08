import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subshegde_food_delivery_app/components/DrawerComponents/myDrawer.dart';
import 'package:subshegde_food_delivery_app/components/OtherComponents/descriptionBox.dart';
import 'package:subshegde_food_delivery_app/components/OtherComponents/myLocation.dart';
import 'package:subshegde_food_delivery_app/components/OtherComponents/mySilverAppBar.dart';
import 'package:subshegde_food_delivery_app/components/OtherComponents/myTabBar.dart';
import 'package:subshegde_food_delivery_app/models/foodModel.dart';
import 'package:subshegde_food_delivery_app/models/restaurant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: FoodCategory.values.length);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  // sort out and return a list of food items that belong to specific category
  List<Food> _fiterMenuByCategory(FoodCategory category,List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return a list of food items that belong to
  List<Widget> getFoodInThiscategory(List<Food> fullMenu){
    return FoodCategory.values.map((category){
      List<Food> categoryMenu = _fiterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return ListTile(
            title: Text(categoryMenu[index].name),
          );
      });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context,innerBoxIsScrolled) => [
            MySilverAppBar(
              title: MyTabBar(tabController: _tabController,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    endIndent: 25,
                    indent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  // current Location
                  const MyCurrentLocation(),
                  // Description box
                  const DescriptionBox()
              ],)
            ),
          ], 
          body: Consumer<Restaurant>(builder: (context, value, child) => TabBarView(
            controller: _tabController,
            children:getFoodInThiscategory(value.menu),
            ),)
          ),
      ),
    );
  }
}