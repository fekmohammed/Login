import 'package:flutter/material.dart';
import './myButton.dart';
import './MyTextField.dart';
import 'register.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}
var a = new TextEditingController();
var b = new TextEditingController();
bool isVisible=true;

// bool isVisible = false;
class _FirstPageState extends State<FirstPage> {
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
                        Text('Please Sign In',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal,fontSize: 20),),
                        SizedBox(height: 20),
                        Padding(
                          padding:const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: myTextField('Username','Please entre your Username',a,Icons.person_outline_sharp),
                        ),
                        Padding(
                          padding:const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: myTextField('Password','Password',b,Icons.visibility,isPass:true),
                        ),

                        TextButton(onPressed: () {  },
                        child:Text('Forget Password ?',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.teal),) ,),
                        SizedBox(height: 20),

                        elevatedB('Sign In'),
                        SizedBox(height: 20),
                        // elevatedB('Login with facebook'),
                        // SizedBox(height: 20),
                        elevatedB('Sign In with google'),
                        SizedBox(height: 20),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('New Here ?'),
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                            },
                              child:Text('Register',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.teal),) ,),
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
