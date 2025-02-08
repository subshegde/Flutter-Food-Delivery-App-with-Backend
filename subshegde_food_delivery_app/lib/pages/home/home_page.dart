import 'package:flutter/material.dart';
import 'package:subshegde_food_delivery_app/components/DrawerComponents/myDrawer.dart';
import 'package:subshegde_food_delivery_app/components/OtherComponents/descriptionBox.dart';
import 'package:subshegde_food_delivery_app/components/OtherComponents/myLocation.dart';
import 'package:subshegde_food_delivery_app/components/OtherComponents/mySilverAppBar.dart';
import 'package:subshegde_food_delivery_app/components/OtherComponents/myTabBar.dart';

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
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
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
          body: TabBarView(
            controller: _tabController,
            children: [
            Text('hello'),
            Text('hello'),
            Text('hello'),
          ],)
          ),
      ),
    );
  }
}