import 'package:flutter/material.dart';
import './myButton.dart';
import './MyTextField.dart';
import 'firstPage.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}
var a = new TextEditingController();
var b = new TextEditingController();
var c = new TextEditingController();
var d = new TextEditingController();
bool isVisible=true;

// bool isVisible = false;
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.teal,
              height: 200,
              // child: Center(child: Text('Welcome')),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ), //BoxShadow
                ],
              ),
              width: 500,
              height: 800,
              child:
              Padding(
                padding:const EdgeInsets.fromLTRB(0, 130, 0, 0),
                child: Column(
                  children: [
                    Text('Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal,fontSize: 20),),
                    SizedBox(height: 20),
                    myTextField('Full Name','Please entre your Full Name',a,Icons.person_outline_sharp),
                    myTextField('Email','Please entre your Username',c,Icons.email_outlined),

                    myTextField('Password','Password',b,Icons.visibility,isPass:true),
                    myTextField('Confirmation','Retype your Password',d,Icons.visibility,isPass:true),

                    // TextButton(onPressed: () {  },
                    //   child:Text('Forget Password ?',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.teal),) ,),
                    SizedBox(height: 20),

                    elevatedB('Login'),
                    SizedBox(height: 20),
                    elevatedB('Login with google'),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('Already have an account?'),
                        TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));},
                          child:Text('Sign In',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.teal),) ,),
                      ],
                    ),








                  ],
                ),
              ),
            ),


            Container(
              margin: const EdgeInsets.fromLTRB(200, 70, 0, 0),
              child: const Image(
                  image: AssetImage('images/study2.png'), height: 180),
            ),
          ],
        ),
      ),
    );
  }
}
