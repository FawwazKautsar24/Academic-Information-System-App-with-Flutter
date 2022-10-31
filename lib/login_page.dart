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
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return AccountPage();
                  },));
                },
              )
            ]
          )
        ],
      ),
    );
  }
}
