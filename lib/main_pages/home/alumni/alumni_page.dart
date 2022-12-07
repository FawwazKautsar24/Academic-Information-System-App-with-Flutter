import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/alumni/alumni_upi_page.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/alumni/alumni_fpmipa_page.dart';

class AlumniPage extends StatefulWidget {
  const AlumniPage({super.key});

  @override
  State<AlumniPage> createState() => _AlumniPageState();
}

class _AlumniPageState extends State<AlumniPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alumni Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('UPI Alumni'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "logo-upi.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: 350,
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 3,
                        margin: EdgeInsets.only(top: 15, bottom: 30),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: ListTile(
                                title: Text(
                                    'Jumlah Alumni\nUniversitas Pendidikan Indonesia',
                                    textAlign: TextAlign.center,
                                  ),
                                subtitle: Text(
                                  '1,5m++',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ]
                  )
                ),
                SizedBox(
                  width: 350,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlumniUPIPage()),
                      );
                    },
                    child: BuildCardWidget3('Data Alumni UPI', 'Jumlah Alumni Hingga Saat Ini'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                ),
                SizedBox(
                  width: 350,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlumniFPMIPAPage()),
                      );
                    },
                    child: BuildCardWidget3('Data Alumni FPMIPA', 'Jumlah Alumni Hingga Saat Ini'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                ),
                SizedBox(
                  width: 350,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {},
                    child: BuildCardWidget3('Profile Alumni Kemakom', 'Data Profile Alumni Setiap Angkatan'),
                  ),
                ),
              ]
            )
          ],
        ),
      ),
    );
  }

  Card BuildCardWidget3(String _title, String _subtitle){
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: [
          ListTile(
            title: Text(_title),
            subtitle: Text(
              _subtitle,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            isThreeLine: true,
            leading: const Icon(Icons.school_outlined),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
    );
  }
}
