import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/account_page.dart';

class AccountEditPagePage extends StatelessWidget {
  const AccountEditPagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile Page')
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context){
              return AccountPage();
            },));
          },
        )
      ),
    );
  }
}
