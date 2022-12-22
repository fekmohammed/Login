import 'package:flutter/material.dart';

class myTextField extends StatefulWidget {
  bool isVisible=true;
  late String labelText;
  late String hintText;
  late IconData icn;
  late bool isPass;
  var myController= new TextEditingController();

  myTextField(this.labelText,this.hintText,this.myController,this.icn,{this.isPass=false});

  @override
  State<myTextField> createState() => _myTextFieldState();
}

class _myTextFieldState extends State<myTextField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: TextFormField(

        controller: widget.myController,
        obscureText: widget.isPass? isVisible:false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.teal[0],

          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal, width: 0),
          ),
          // border: InputBorder ,
          // prefixIcon: Icon(widget.icn),
          labelText: widget.labelText,
          labelStyle: TextStyle(fontSize: 12.4,color: Colors.blueGrey),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
          prefixIcon:
          !widget.isPass?Icon(widget.icn): IconButton(
            icon: Icon(isVisible? Icons.visibility:Icons.visibility_off),
            onPressed: () {
              setState((){
                isVisible=!isVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}