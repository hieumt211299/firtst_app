import 'package:flutter/cupertino.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

// class _SearchBarWidgetState extends State<SearchBarWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const SearchBar(
//       leading: Icon(
//         Icons.search,
//         color: Color.fromRGBO(210, 210, 210, 1),
//       ),
//     );
//   }
// }
class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 25),
      child: SizedBox(
          height: 50,
          child: CupertinoSearchTextField(
            backgroundColor: Color(0xFFF3F3F3),
            padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
            placeholderStyle: TextStyle(color: Color(0xFFD2D2D2)),
            itemSize: 23,
            itemColor: Color(0xFFD2D2D2),
          )),
    );
  }
}
