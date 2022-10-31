import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/account_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250,
                margin: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('logo-app-main.png'),
                )
              ),
            ]
          ),
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
          )
        ],
      ),
    );
  }
}
