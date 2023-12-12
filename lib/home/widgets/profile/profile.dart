import 'package:fitness_ui/common/avatar.dart';
import 'package:fitness_ui/common/check_noti.dart';
import 'package:fitness_ui/common/icon_button.dart';
import 'package:fitness_ui/common/money.dart';
import 'package:fitness_ui/home/widgets/statistic/statistic.dart';
import 'package:fitness_ui/utils/imagedata.dart';
import 'package:fitness_ui/utils/svgdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Map<String, dynamic>> settingItems = [
  {'icon': const Icon(Icons.settings), 'title': 'Settings'},
  {'icon': SvgPicture.asset(SvgData.discovery), 'title': 'Your Activity'},
  {'icon': const Icon(Icons.account_balance_wallet_rounded), 'title': 'Wallet'},
  {'icon': const Icon(Icons.person), 'title': 'Share Your Profile'},
  {'icon': const Icon(Icons.star), 'title': 'Favorite'},
  {'icon': const Icon(Icons.logout), 'title': 'Logout'},
];

enum TypeInfo { view, money, percent }

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.back,
  });
  final VoidCallback back;

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 2, vsync: this);
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 330,
              ),
              Image.asset(
                ImageData.nft1,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
              Positioned(
                top: 23,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButtonWidget(
                        icon: const Icon(Icons.arrow_back_ios_new),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const StatusticWidget(),
                              ));
                        },
                      ),
                      IconButtonWidget(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.white,
                            context: context,
                            builder: ((context) {
                              return SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, bottom: 25),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      for (var item in settingItems)
                                        SettingItemWidget(
                                          icon: item['icon'],
                                          title: item['title'],
                                        )
                                    ],
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 190,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: AvatarWidget(
                              size: 112, avatar: ImageData.avatar1)),
                    ),
                  ),
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Perperzon',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CheckNotiWidget(
                size: 30,
              )
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileInforWidget(
                title: 'items',
                content: '9.9k',
                type: TypeInfo.view,
              ),
              ProfileInforWidget(
                title: 'items',
                content: '14.9k',
                type: TypeInfo.view,
              ),
              ProfileInforWidget(
                title: 'floor price',
                content: '16.4',
                type: TypeInfo.money,
              ),
              ProfileInforWidget(
                title: 'traded',
                content: '26.4',
                type: TypeInfo.money,
              ),
            ],
          ),
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.pink,
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: const TextStyle(color: Colors.grey),

                  // controller: _tabController,
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgData.ticketStar,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Collection',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(SvgData.discovery),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Activity',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  color: Colors.green,
                  child: const TabBarView(
                    children: [
                      Column(
                        children: [
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                          Text('1'),
                        ],
                      ),
                      Text('2'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingItemWidget extends StatelessWidget {
  const SettingItemWidget({
    super.key,
    required this.icon,
    required this.title,
  });
  final Widget icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55),
        child: TextButton.icon(
          style: const ButtonStyle(
              alignment: Alignment.centerLeft,
              overlayColor: MaterialStatePropertyAll(Colors.white),
              iconColor: MaterialStatePropertyAll(Colors.black)),
          onPressed: () {},
          icon: icon,
          label: Text(
            title,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class ProfileInforWidget extends StatelessWidget {
  const ProfileInforWidget({
    super.key,
    required this.title,
    required this.content,
    required this.type,
  });

  final String title;
  final dynamic content;
  final TypeInfo type;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (type == TypeInfo.view)
          Text(
            '$content',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
            ),
          ),
        if (type == TypeInfo.money)
          MoneyWidget(
            money: content,
            size: MoneyWidgetSize.medium,
          ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF828282),
            fontSize: 13,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
