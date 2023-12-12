import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({
    super.key,
    required this.list,
    required this.icon,
  });
  final List<String> list;
  final Widget icon;

  @override
  State<DropDownWidget> createState() => DropDownyWidgetState();
}

class DropDownyWidgetState extends State<DropDownWidget> {
  late List<String> _list;
  late String dropdownValue;
  late Widget _icon;

  @override
  void initState() {
    super.initState();
    _list = widget.list;
    _icon = widget.icon;
    dropdownValue = _list.first;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return DropdownMenu<String>(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      width: (width - 30) / 2,
      leadingIcon: _icon,
      initialSelection: dropdownValue,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: _list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
