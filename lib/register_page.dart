import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/account/account_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  late bool showvalue = false;
  late bool value;
  late String _selectedGender = 'male';

  policyIsAgree(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return AccountPage();
    },));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create new Account',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                // Spacer(flex: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text('Nama Lengkap : *', 
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
                      child: Text('Jenis Kelamin :', 
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
                            hintText: 'Pilih Jenis Kelamin . . .',
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 500),
                      child: ListTile(
                        leading: Radio<String>(
                          value: 'male',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        title: const Text('Male'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 500),
                      child: ListTile(
                        leading: Radio<String>(
                          value: 'female',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        title: const Text('Female'),
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
                      child: Text('Email : *', 
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text('Nomor Handphone : *', 
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
                            hintText: '0857 xxxx xxxx',
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
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(width: 10), //SizedBox
                    /** Checkbox Widget **/
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Checkbox(  
                        value: this.showvalue,
                        onChanged: (value) {  
                          setState(() {
                            if(showvalue){
                              this.showvalue = false;
                            }else{
                              this.showvalue = true;
                            }
                          });
                        },  
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'setuju dengan Persyaratan Layanan dan Kebijakan pribadi',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                // Spacer(flex: 2),
                Container(
                margin: EdgeInsets.only(top: 20, bottom: 45),
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
                  child: Text('Proses', 
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  onPressed: showvalue ? () => policyIsAgree() : null
                ),
              ),
              ]
            ),
          ]
        )
      )
    );
  }
}
