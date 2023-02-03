import 'package:flutter/material.dart';

class allTaskWidget extends StatefulWidget {
  String? img;
  String? textTitle;
  String? textSubTitle;
  allTaskWidget({
    required this.img,
    required this.textTitle,
    required this.textSubTitle,
    Key? key}) : super(key: key);

  @override
  State<allTaskWidget> createState() => _allTaskWidgetState();
}

class _allTaskWidgetState extends State<allTaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(widget.img!,),
        title: Text(widget.textTitle!,
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'inter',
                fontWeight: FontWeight.w600,
                color: Color(0xFF042E2B))),
        subtitle: Text(widget.textSubTitle!,
            style: TextStyle(
                fontSize: 12,
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
                color: Color(0x7f042d2b))),
      ),
    );
  }
}
