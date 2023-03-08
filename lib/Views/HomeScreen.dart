import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football_track_ui/Views/HomeScreen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(

          body:const TabBarView(
            children: [
              HomeScreen2(),
              Icon(Icons.chat),
              Center(
                child: Icon(Icons.add_box_outlined),
              ),
              Center(
                child: Icon(Icons.people_outline),
              ),
              Center(
                child: Icon(Icons.person_outline),
              )
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: Container(

              decoration:const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF344a7b),
                      Color(0xFF4b6bb5),

                    ],
                  )
              ),
              child:const
              TabBar(

                tabs: [
                  Tab(
                    icon: Icon(Icons.home_outlined),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(Icons.chat),
                    text: "Chat",
                  ),
                  Tab(
                    icon: Icon(Icons.add_box_outlined),
                    text: "Post",
                  ),
                  Tab(
                    icon: Icon(Icons.people_outline),
                    text: "Teams",
                  ),
                  Tab(
                    icon: Icon(Icons.person_outline),
                    text: "Profile",
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
