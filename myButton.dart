import 'package:flutter/material.dart';

class elevatedB extends StatefulWidget {

  late String point;
  late String note;
  late var state;
  late var color;
  elevatedB(this.point);
  @override
  State<elevatedB> createState() => _elevatedBState();
}

class _elevatedBState extends State<elevatedB> {


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ButtonStyle(

        // maximumSize: MaterialStateProperty.all(Size.fromWidth(150)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
      ),
      onPressed: () {
        setState(() {
        });
      },
      child:  Column(
          children: [
            Container(
              // padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                width:300 ,
                height: 60,
                // margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Center(child: Text(widget.point))),

          ],
        ),

    );
  }
}
