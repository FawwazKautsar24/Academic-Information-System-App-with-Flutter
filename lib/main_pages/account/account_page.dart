import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/account/account_editProfile_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  late String _selectedLanguage = 'ID';
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account Page',
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            children: <Widget>[
              Text('My Account'),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 60,
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
            Container(
              margin: EdgeInsets.only(right: 50),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AccountEditProfilePage();
                  },));
                },
                icon: Icon(
                  Icons.edit_note, 
                  size: 35
                ),
              ),
            ),
          ],
        ),
        // body: Center(
        //   child: ElevatedButton(
        //     child: Text('Go to Edit Profile Page'),
        //     onPressed: () {
        //       Navigator.push(context, MaterialPageRoute(builder: (context) {
        //         return AccountEditPagePage();
        //       },));
        //     },
        //   )
        // ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Spacer(flex: 3,),
                  Container(
                    width: 10,
                    child: Icon(
                      Icons.language, 
                      size: 28
                    ),
                  ),
                  Spacer(flex: 2,),
                  Container(
                    width: 150,
                    child: Text('Bahasa', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                  Spacer(flex: 5,),
                  Container(
                    child: Icon(
                      Icons.chevron_right, 
                      size: 28
                    ),
                  ),
                  Spacer(flex: 3,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Spacer(flex: 3,),
                  Container(
                    width: 10,
                    child: Icon(
                      Icons.corporate_fare, 
                      size: 28
                    ),
                  ),
                  Spacer(flex: 2,),
                  Container(
                    width: 150,
                    child: Text('Tentang Kami', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                  Spacer(flex: 5,),
                  Container(
                    child: Icon(
                      Icons.chevron_right, 
                      size: 28
                    ),
                  ),
                  Spacer(flex: 3,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Spacer(flex: 3,),
                  Container(
                    width: 10,
                    child: Icon(
                      Icons.star_border_purple500, 
                      size: 28
                    ),
                  ),
                  Spacer(flex: 2,),
                  Container(
                    width: 150,
                    child: Text('Nilai Kami', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
                  Spacer(flex: 5,),
                  Container(
                    child: Icon(
                      Icons.chevron_right, 
                      size: 28
                    ),
                  ),
                  Spacer(flex: 3,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Spacer(flex: 3,),
                  Container(
                    width: 10,
                    child: Icon(
                      Icons.info, 
                      size: 28
                    ),
                  ),
                  Spacer(flex: 2,),
                  Container(
                    width: 128,
                    child: Text('Tentang Aplikasi', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
                  Spacer(flex: 5,),
                  Container(
                    child: Text('v2.1.3-d')
                  ),
                  Spacer(flex: 3,)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Spacer(flex: 3,),
                  Container(
                    width: 10,
                    child: Icon(
                      Icons.exit_to_app, 
                      size: 28
                    ),
                  ),
                  Spacer(flex: 2,),
                  Container(
                    width: 150,
                    child: Text('Keluar', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
                  Spacer(flex: 5,),
                  Container(
                    child: Icon(
                      Icons.chevron_right, 
                      size: 28
                    ),
                  ),
                  Spacer(flex: 3,),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
