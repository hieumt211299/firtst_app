import 'package:fitness_ui/home/widgets/nft_detail.dart';
import 'package:fitness_ui/utils/user_model.dart';
import 'package:flutter/material.dart';

User user1 = User(
  username: 'Perperzon',
  avatar: 'assets/img/avatar1.png', // Example path, adjust it accordingly
  money: '3.421',
);
User user2 = User(
  username: 'Richard ',
  avatar: 'assets/img/avatar2.png', // Example path, adjust it accordingly
  money: '5,412',
);

class TrendingNFT extends StatelessWidget {
  const TrendingNFT({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Trending NFT’s',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.75, 0, 0, 0),
              child: Image.asset('assets/img/fire.png'),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 19),
          child: SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  NFTDetailWidget(
                    title: 'Future of Polygon X',
                    user: user1,
                    mainimage: 'assets/img/nft1.png',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  NFTDetailWidget(
                    title: 'Future of Polygon X',
                    user: user2,
                    mainimage: 'assets/img/nft2.png',
                  )
                ],
              )),
        )
      ],
    );
  }
}
