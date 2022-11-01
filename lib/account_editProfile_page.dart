import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/account_page.dart';

class AccountEditProfilePage extends StatefulWidget {
  const AccountEditProfilePage({super.key});

  @override
  State<AccountEditProfilePage> createState() => _AccountEditProfilePageState();
}

class _AccountEditProfilePageState extends State<AccountEditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Colors.red.shade900,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              // Spacer(flex: 3),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    'no-profile.png', 
                  ),
                ),
              ),
              // Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text('Nama Lengkap :', 
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                ]
              ),
              // Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    child: SizedBox(
                      width: 450,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Masukan Nama Lengkap Anda . . .',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.red.shade500),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text('Email :', 
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                ]
              ),
              // Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    child: SizedBox(
                      width: 450,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Masukan Alamat Email Anda . . .',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.red.shade500),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Spacer(flex: 10,),
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 60),
                    child: Text('Tempat Lahir :', 
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  // Spacer(flex: 2,),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 60),
                    child: Text('Tanggal Lahir :', 
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  // Spacer(flex: 10,),
                ]
              ),
              // Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Spacer(flex: 10,),
                  Container(
                    margin: EdgeInsets.only(top: 13, right: 25),
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Kota / Kabupaten',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.red.shade500),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Spacer(flex: 1,),
                  Container(
                    margin: EdgeInsets.only(top: 13, left: 25),
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'DD - MM - YYYY',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.red.shade500),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Spacer(flex: 10,),
                ],
              ),
              // Spacer(flex: 2),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade900, //background color of button
                    side: BorderSide(width:3, color:Colors.red.shade900), //border width and color
                    elevation: 3, //elevation of button
                    fixedSize: Size(450, 40),
                    shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20) //content padding inside button
                  ),
                  child: Text('Save', 
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (context){
                      return AccountPage();
                    },));
                  }
                ),
              ),
            ]
          ),
        ]
      )
    );
  }
}
