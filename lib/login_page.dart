import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/account_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = new TextEditingController();

    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Spacer(flex: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250,
                // margin: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('logo-app-main.png'),
                )
              ),
            ]
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Selamat Datang', 
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('di Aplikasi', 
              style: TextStyle(
                fontSize: 15,
              ),),
              Text(' MAL SKA ', 
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
              Text('Membership', 
              style: TextStyle(
                fontSize: 15,
              ),),
            ]
          ),
          Spacer(flex: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Email :', 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ]
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 350,
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Masukan Email Anda . . .',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.black26),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.red.shade500),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade900, //background color of button
                      side: BorderSide(width:3, color:Colors.red.shade900), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(20)
                            ),
                        padding: EdgeInsets.fromLTRB(30, 20, 30, 20) //content padding inside button
                  ),
                  child: Text('Login', 
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return AccountPage();
                    },));
                  },
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, //background color of button
                      side: BorderSide(width:3, color:Colors.red.shade900), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(25)
                            ),
                        padding: EdgeInsets.fromLTRB(30, 20, 30, 20) //content padding inside button
                  ),
                  child: Text('Register', 
                    style: TextStyle(
                        color: Colors.red.shade900,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return AccountPage();
                    },));
                  },
                ),
              )
            ]
          ),
          Spacer(flex: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('SKA MALL Mobile - 2022', 
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold
              ),),
            ]
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
