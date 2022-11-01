import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/account_editProfile_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  late String _selectedLanguage = 'ID';
  
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
                    child: Text('Bahasa'),
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
                    child: Text('Tentang Kami'),
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
                    child: Text('Nilai Kami')
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
                    width: 130,
                    child: Text('Tentang Aplikasi')
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
                    child: Text('Keluar')
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
            ],
          ),
        ),
      bottomNavigationBar: new BottomNavigationBar(
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.red.shade900,
        currentIndex: 3,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.shopify,
              size: 35,
            ),
            label: "Beranda",
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 35,
            ),
            label: "Notifikasi",
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 35,
            ),
            label: "Berita",
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 35,
            ),
            label: "Akun",
          ),
        ],
      ),
    );
  }
}
