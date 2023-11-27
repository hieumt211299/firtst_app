import 'package:fitness_ui/home/widgets/category_items.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> categories = [
  {'title': 'Art', 'mainimage': 'assets/img/category1.png'},
  {'title': '3D Illustration', 'mainimage': 'assets/img/category2.png'},
  {'title': 'Photography', 'mainimage': 'assets/img/category3.png'},
  {'title': 'Art', 'mainimage': 'assets/img/category1.png'},
  {'title': '3D Illustration', 'mainimage': 'assets/img/category2.png'},
  {'title': 'Photography', 'mainimage': 'assets/img/category3.png'},
  // Add more categories as needed
];

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Text(
            'Category',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          height: 152,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  width: 131,
                  child: CategoryItemsWidget(
                    title: categories[index]['title'].toString(),
                    mainimage: categories[index]['mainimage'].toString(),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
