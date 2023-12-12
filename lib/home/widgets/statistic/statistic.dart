import 'package:fitness_ui/common/drop_down.dart';
import 'package:fitness_ui/common/globals.dart';
import 'package:fitness_ui/home/widgets/profile/profile.dart';
import 'package:fitness_ui/home/widgets/statistic/statistic_detail.dart';
import 'package:fitness_ui/utils/statistic_model.dart';
import 'package:fitness_ui/utils/svgdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusticWidget extends StatelessWidget {
  const StatusticWidget({super.key});

  static List<String> tabs = ['Ranhkings', 'Activity'];
  static List<Ranngking> listRangking = [
    Ranngking(
      user: IGlobals.user1,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
    Ranngking(
      user: IGlobals.user2,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
    Ranngking(
      user: IGlobals.user1,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
    Ranngking(
      user: IGlobals.user2,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
    Ranngking(
      user: IGlobals.user1,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
    Ranngking(
      user: IGlobals.user2,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
    Ranngking(
      user: IGlobals.user1,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
    Ranngking(
      user: IGlobals.user2,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
    Ranngking(
      user: IGlobals.user1,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
    Ranngking(
      user: IGlobals.user2,
      detailList: [
        RankingDetail(title: '24h%', content: '11,3%', type: TypeInfo.percent),
        RankingDetail(
            title: 'Floor Price', content: '3.421 ', type: TypeInfo.money),
        RankingDetail(title: 'Owner', content: '70k', type: TypeInfo.view),
        RankingDetail(title: 'Items', content: '9.1k', type: TypeInfo.view),
      ],
    ),
  ];

  static List<Widget> tabBars = [
    const TabBarWidget(
      icon: Icon(Icons.bar_chart),
      title: 'Ranhkings',
    ),
    TabBarWidget(
      icon: SvgPicture.asset(SvgData.discovery),
      title: 'Activity',
    ),
  ];
  static List<Widget> tabDetails = [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              DropDownWidget(
                list: ['All Categories', 'Two', 'Three', 'Four'],
                icon: Icon(Icons.category_sharp),
              ),
              SizedBox(
                width: 6,
              ),
              DropDownWidget(
                  list: ['All Chains', 'Two', 'Three', 'Four'],
                  icon: Icon(Icons.link)),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 8),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(11, 11, 11, 0),
                  child: Column(
                    children: [
// StatisticDetailWidget(listRangking[0])
                      for (var item in listRangking.asMap().entries)
                        StatisticDetailWidget(
                          index: item.key,
                          ranngking: item.value,
                        )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    const Text('ghjghjh')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: const Text(
            'Statistic',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.pink,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: const TextStyle(color: Colors.grey),
            tabs: [
              for (var tab in tabBars)
                Tab(
                  child: tab,
                )
            ],
          ),
        ),
        body: TabBarView(
          children: [for (var item in tabDetails) item],
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
