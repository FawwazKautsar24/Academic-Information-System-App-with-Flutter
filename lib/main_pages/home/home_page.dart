import 'package:flutter/material.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/student/student_page.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/alumni/alumni_page.dart';
import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/lecture/lecture_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kalani App'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StudentPage()),
                          );
                        },
                        child: BuildCardWidget2('main/student.jpeg', 'Data Mahasiswa', 'Penelitian, Pengabdian, dan Pengajaran', Icons.supervisor_account_outlined),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AlumniPage()),
                          );
                        },
                        child: BuildCardWidget2('main/alumni.jpg', 'Data Alumni', 'Penelitian, Pengabdian, dan Pengajaran', Icons.school_outlined),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LecturePage()),
                          );
                        },
                        child: BuildCardWidget2('main/lecture.jpg', 'Data Dosen', 'Penelitian, Pengabdian, dan Pengajaran', Icons.home_work_outlined),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                ),
              ],
            )
          ],
        ),
      )
    );
  }

  Card BuildCardWidget2(String _imgDiretory, String _title, String _subtitle, IconData _iconData){
    return Card(
      margin: EdgeInsets.only(top: 30),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: [
          Image.asset(
            _imgDiretory,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(_title),
            subtitle: Text(
              _subtitle,
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            leading: Icon(_iconData),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 10,
    );
  }
}
