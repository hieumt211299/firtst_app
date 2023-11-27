import 'package:fitness_ui/home/widgets/awesome_colection.dart';
import 'package:fitness_ui/home/widgets/category_widget.dart';
import 'package:fitness_ui/home/widgets/hot_colection.dart';
import 'package:fitness_ui/home/widgets/trending_nft.dart';
import 'package:fitness_ui/home/widgets/header_widget.dart';
import 'package:fitness_ui/home/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 30),
          child: HeaderWidget(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchBarWidget(),
                const SizedBox(
                  height: 20,
                ),
                const TrendingNFT(),
                const SizedBox(
                  height: 20,
                ),
                const CategoryWidget(),
                const SizedBox(
                  height: 40,
                ),
                const HotColectionWidget(),
                const SizedBox(
                  height: 20,
                ),
                const AwesomeCollectionWidget(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/img/avatar1.png',
                                    width: 44,
                                    height: 44,
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 19,
                                            height: 19,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                            height: 15,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 15,
                                                    height: 15,
                                                    decoration:
                                                        const ShapeDecoration(
                                                      color: Color(0xFF007AFF),
                                                      shape: OvalBorder(),
                                                    ),
                                                    child: const Center(
                                                        child: Icon(
                                                      Icons.check,
                                                      size: 11,
                                                    )),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Abstrack 3D Coloring #332',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'by Silvana',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('32 ITEM'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // height: 76,
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(width: 1, color: Colors.grey))),
        child: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined),
              label: 'Chart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.safety_check_outlined),
              label: 'rt',
            ),
            // Add more BottomNavigationBarItems as needed
          ],
          // Add other properties as needed
        ),
      ),
    );
    // BottomNavigationBar:
    // (BottomNavigationBar(items: [
    //   Text('123123'),
    // ]));
  }
}
