import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/account_editProfile_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Account Page'),
        title: Column(
          children: <Widget>[
            Text('Account Page'),
            Container(
              width: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'no-profile.png', 
                ),
              ),
            ),
          ]
        ),
        backgroundColor: Colors.red.shade900,
        toolbarHeight: 120,
        actions: [
          Icon(
            Icons.edit_note, 
            size: 35
          ),
        ],
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
