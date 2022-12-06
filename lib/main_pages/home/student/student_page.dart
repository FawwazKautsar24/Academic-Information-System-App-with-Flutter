import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/student/student_upi_page.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/student/student_fpmipa_page.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/student/student_depilkom_page.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/student/student_kemakom_page.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/student/student_newsInfo_page.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('UPI Students'),
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
                                    'Jumlah Mahasiswa\nUniversitas Pendidikan Indonesia',
                                    textAlign: TextAlign.center,
                                  ),
                                subtitle: Text(
                                  '41.912',
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
                        MaterialPageRoute(builder: (context) => StudentUPIPage()),
                      );
                    },
                    child: BuildCardWidget3('Data Mahasiswa UPI', 'Jumlah Mahasiswa Aktif \nSemester Ganjil Tahun 2022'),
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
                        MaterialPageRoute(builder: (context) => StudentFPMIPAPage()),
                      );
                    },
                    child: BuildCardWidget3('Data Mahasiswa FPMIPA', 'Jumlah Mahasiswa Aktif \nAngkatan 2019 - 2022'),
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
                        MaterialPageRoute(builder: (context) => StudentDepilkomPage()),
                      );
                    },
                    child: BuildCardWidget3('Data Mahasiswa Depilkom', 'Jumlah Mahasiswa Aktif \nAngkatan 2019 - 2022'),
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
                        MaterialPageRoute(builder: (context) => StudentKemakomPage()),
                      );
                    },
                    child: BuildCardWidget3('Profile Mahasiswa Kemakom', 'Data Profile Mahasiswa Aktif \nAngkatan 2019 - 2022'),
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
                        MaterialPageRoute(builder: (context) => StudentNewsInfoPage()),
                      );
                    },
                    child: BuildCardWidget3('Info & Berita Terkini', 'Berita up to date & kalender akademik\nSemester Ganjil Tahun 2022'),
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
            leading: const Icon(Icons.supervisor_account_outlined),
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
