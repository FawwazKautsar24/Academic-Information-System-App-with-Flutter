import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/account_editProfile_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Page')
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Edit Profile Page'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AccountEditPagePage();
            },));
          },
        )
      ),
    );
  }
}
