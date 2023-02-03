import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReminderWidget extends StatefulWidget {
  String? textTitle;
  String? textSubTitle;
  String? img;
   ReminderWidget({
    required this.textTitle,
    required this.textSubTitle,
    required this.img,
    Key? key}) : super(key: key);

  @override
  State<ReminderWidget> createState() => _ReminderWidgetState();
}

class _ReminderWidgetState extends State<ReminderWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.img!,
              width: 36,
              height: 32,
              fit: BoxFit.cover,
            ),
            Text(widget.textTitle!,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w500,
                    color: Color(0xff042d2b))),
            Text(widget.textSubTitle!,
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w400,
                    color: Color(0x7f042d2b))),
          ],
        ),
      ),
    );
  }
}
