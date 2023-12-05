import 'package:fitness_ui/common/avatar.dart';
import 'package:fitness_ui/common/check_noti.dart';
import 'package:fitness_ui/common/globals.dart';
import 'package:fitness_ui/common/mainbutton.dart';
import 'package:fitness_ui/common/money.dart';
import 'package:fitness_ui/home/widgets/trending/history_bird.dart';
import 'package:fitness_ui/utils/imagedata.dart';
import 'package:fitness_ui/utils/svgdata.dart';
import 'package:fitness_ui/utils/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TrendingNFTDetailWidget extends StatelessWidget {
  const TrendingNFTDetailWidget(
      {super.key,
      required this.user,
      required this.title,
      required this.image});
  final User user;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 17),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            SizedBox(
                              // width: double.infinity - 100,
                              width: double.maxFinite,
                              child: Image.asset(
                                image,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                                right: 21,
                                bottom: 21,
                                child: SvgPicture.asset(SvgData.gardientHeart))
                          ]),
                          const SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text(
                                    user.username,
                                    style: const TextStyle(
                                      color: Color(0xFFF178B6),
                                      fontSize: 15,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  const CheckNotiWidget(),
                                ]),
                                Text(
                                  title,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  width: double.infinity,
                                  height: 48,
                                  child: Text(
                                    'A collection of 10,000 utility-enabled PFPs that feature a richly diverse and unique pool of rarity-powered traits. ',
                                    style: TextStyle(
                                      color: Color(0xFF888888),
                                      fontSize: 15,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines:
                                        2, // Set the maximum number of lines you want to display
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          AvatarWidget(
                                              size: 38, avatar: user.avatar),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Created by',
                                                style: TextStyle(
                                                  color: Color(0xFFD2D2D2),
                                                  fontSize: 10.37,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                user.username,
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          AvatarWidget(
                                              size: 38,
                                              avatar: ImageData.avatar2),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Owned by',
                                                style: TextStyle(
                                                  color: Color(0xFFD2D2D2),
                                                  fontSize: 10.37,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                'Videz',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Current Bid',
                        style: TextStyle(
                          color: Color(0xFFD2D2D2),
                          fontSize: 13,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      MoneyWidget(
                        money: user.money,
                        size: MoneyWidgetSize.large,
                      )
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'End in',
                        style: TextStyle(
                          color: Color(0xFFD2D2D2),
                          fontSize: 13,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'May 17, 2022 at 12:08',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            MainButtonWidget(
              title: 'Place Bid',
              prefix: SvgPicture.asset(SvgData.wallet),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: ((context) {
                      return SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'History of Bid',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          'May 14, 2022',
                                          style: TextStyle(
                                            color: Color(0xFF888888),
                                            fontSize: 13,
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 300,
                                    child: ListView(
                                      children: [
                                        HistoryBirdWidget(
                                          user: IGlobals.user1,
                                          time: 'May 17, 2022 at 12:08',
                                          money: '3.154',
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        HistoryBirdWidget(
                                          user: IGlobals.user2,
                                          time: 'May 17, 2022 at 12:08',
                                          money: '5.415',
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        HistoryBirdWidget(
                                          user: IGlobals.user1,
                                          time: 'May 17, 2022 at 12:08',
                                          money: '8.153',
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 28,
                                  ),
                                  const Text(
                                    'Your Bid',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                      height: 63,
                                      width: double.infinity,
                                      decoration: ShapeDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment(0.90, -0.43),
                                          end: Alignment(-0.9, 0.43),
                                          colors: [
                                            Color(0xFFFF56BB),
                                            Color(0xFFFF8F76)
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    'ETH',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  SvgPicture.asset(
                                                      SvgData.arrowDown)
                                                ],
                                              )),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 1),
                                              child: Container(
                                                height: 60,
                                                decoration: const ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        16),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        16)))),
                                                child: const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Minimal Submit 3.5 ETH',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFD2D2D2),
                                                          fontSize: 13,
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 0.09,
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  MainButtonWidget(
                                    title: 'Submit',
                                    prefix: SvgPicture.asset(SvgData.wallet),
                                    onPressed: () {
                                      // print('Submit');
                                    },
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }));
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      /* Your detail screen content */
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgData.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgData.chart),
            label: 'Chart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgData.search),
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
