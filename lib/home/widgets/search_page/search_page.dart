import 'package:fitness_ui/common/check_noti.dart';
import 'package:fitness_ui/common/globals.dart';
import 'package:fitness_ui/common/money.dart';
import 'package:fitness_ui/home/widgets/colection.dart';
import 'package:fitness_ui/home/widgets/search_bar_widget.dart';
import 'package:fitness_ui/utils/item_model.dart';
import 'package:fitness_ui/utils/svgdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Item> itemsList = [
  IGlobals.item1,
  IGlobals.item2,
  IGlobals.item3,
  IGlobals.item4
];

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: IGlobals.spaceLeft,
            child: Text(
              'Search',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Padding(
            padding: IGlobals.spaceLeft,
            child: SearchBarWidget(),
          ),
          SizedBox(
            height: 34,
          ),
          ColectionWidget(),
          SizedBox(
            height: 23,
          ),
          ItemWidget()
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final bool title;
  const ItemWidget({
    super.key,
    this.title = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: IGlobals.spaceLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ? 'Items' : '',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          ItemListWidget()
        ],
      ),
    );
  }
}

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: SizedBox(
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          runSpacing: 15,
          children: [
            //   Container(
            //     width: MediaQuery.of(context).size.width / 2 - 20,
            //     decoration: BoxDecoration(
            //         color: Colors.white, borderRadius: BorderRadius.circular(10)),
            //     child: Padding(
            //       padding: const EdgeInsets.all(5.0),
            //       child: ItemDetailWidget(item: IGlobals.item1),
            //     ),
            //   ),
            //   Container(
            //     width: MediaQuery.of(context).size.width / 2 - 20,
            //     decoration: BoxDecoration(
            //         color: Colors.white, borderRadius: BorderRadius.circular(10)),
            //     child: Padding(
            //       padding: const EdgeInsets.all(5.0),
            //       child: ItemDetailWidget(item: IGlobals.item1),
            //     ),
            //   ),
            //   Container(
            //     width: MediaQuery.of(context).size.width / 2 - 20,
            //     decoration: BoxDecoration(
            //         color: Colors.white, borderRadius: BorderRadius.circular(10)),
            //     child: Padding(
            //       padding: const EdgeInsets.all(5.0),
            //       child: ItemDetailWidget(item: IGlobals.item1),
            //     ),
            //   ),
            //   Container(
            //     width: MediaQuery.of(context).size.width / 2 - 20,
            //     decoration: BoxDecoration(
            //         color: Colors.white, borderRadius: BorderRadius.circular(10)),
            //     child: Padding(
            //       padding: const EdgeInsets.all(5.0),
            //       child: ItemDetailWidget(item: IGlobals.item1),
            //     ),
            //   ),
            //
            for (Item item in itemsList)
              Container(
                width: MediaQuery.of(context).size.width / 2 - 25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ItemDetailWidget(item: item),
                ),
              )
          ],
        ),
      ),
    );
  }
}

class ItemDetailWidget extends StatelessWidget {
  const ItemDetailWidget({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            item.mainImage,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(children: [
          Text(
            item.author,
            style: const TextStyle(
              color: Color(0xFFF178B6),
              fontSize: 14,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w700,
            ),
          ),
          const CheckNotiWidget(
            size: 13,
          )
        ]),
        const SizedBox(
          height: 5,
        ),
        Text(
          item.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14.94,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MoneyWidget(money: item.money),
            Row(
              children: [
                SvgPicture.asset(
                  SvgData.heart,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  item.lover,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 11.06,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
