import 'package:fitness_ui/common/avatar.dart';
import 'package:fitness_ui/common/avatar_check.dart';
import 'package:fitness_ui/home/widgets/awesome_colection.dart';
import 'package:fitness_ui/home/widgets/category_widget.dart';
import 'package:fitness_ui/home/widgets/colection.dart';
import 'package:fitness_ui/home/widgets/search_page/search_page.dart';
import 'package:fitness_ui/home/widgets/trending/trending_nft.dart';
import 'package:fitness_ui/home/widgets/header_widget.dart';
import 'package:fitness_ui/home/widgets/search_bar_widget.dart';
import 'package:fitness_ui/utils/imagedata.dart';
import 'package:fitness_ui/utils/svgdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeWidget(),
    const ChartWidget(),
    const SearchPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Widget _searchPage = SearchPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      // appBar: AppBar(
      //   title: const Padding(
      //     padding: EdgeInsets.only(top: 30),
      //     child: HeaderWidget(),
      //   ),
      // ),
      body: SafeArea(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 0 ? Colors.pink : Colors.grey,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(SvgData.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 1 ? Colors.pink : Colors.grey,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(SvgData.chart),
            ),
            label: 'Chart',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 2 ? Colors.pink : Colors.grey,
                BlendMode.srcIn,
              ),
              child: SvgPicture.asset(SvgData.search),
            ),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
              label: '',
              icon: AvatarWidget(size: 30, avatar: ImageData.avatar1)),
          // Add more BottomNavigationBarItems as needed
        ],
        // Add other properties as needed
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 0, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: HeaderWidget(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: SearchBarWidget(),
            ),
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
            const ColectionWidget(
              title: 'Hot Colections',
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: AwesomeCollectionWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Row(
                        children: [
                          AvatarCheckWidget(
                              avatar: ImageData.avatar1,
                              size: 44,
                              place: 'bottom'),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
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
    );
  }
}

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Index 1: chart',
    );
  }
}
