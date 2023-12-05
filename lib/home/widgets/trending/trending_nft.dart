import 'package:fitness_ui/common/globals.dart';
import 'package:fitness_ui/home/widgets/trending/nft_detail.dart';
import 'package:fitness_ui/utils/imagedata.dart';
import 'package:fitness_ui/utils/user_model.dart';
import 'package:flutter/material.dart';

User user1 = User(
  username: 'Perperzon',
  avatar: ImageData.avatar1, // Example path, adjust it accordingly
  money: '3.421',
);
User user2 = User(
  username: 'Richard',
  avatar: ImageData.avatar2, // Example path, adjust it accordingly
  money: '5,412',
);

class TrendingNFT extends StatelessWidget {
  const TrendingNFT({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
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
                child: Image.asset(ImageData.fire),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 19),
          child: SizedBox(
              height: 350,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  NFTDetailWidget(
                    title: 'Future of Polygon X',
                    user: IGlobals.user1,
                    mainimage: ImageData.nft1,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  NFTDetailWidget(
                    title: 'Future of Polygon X',
                    user: IGlobals.user2,
                    mainimage: ImageData.nft2,
                  )
                ],
              )),
        )
      ],
    );
  }
}
