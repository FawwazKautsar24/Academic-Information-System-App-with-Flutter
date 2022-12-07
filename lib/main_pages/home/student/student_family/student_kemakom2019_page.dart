import 'package:flutter/material.dart';
// import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/student/student_page.dart';

class StudentKemakom2019Page extends StatefulWidget {
  const StudentKemakom2019Page({super.key});

  @override
  State<StudentKemakom2019Page> createState() => _StudentKemakom2019PageState();
}

class _StudentKemakom2019PageState extends State<StudentKemakom2019Page> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Force 2019 Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Angkatan 2019'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 30),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "force-logo/angkatan19.jpg",
                  height: 60,
                  width: 60,
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 3,
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: ListTile(
                                title: Text(
                                  'F19THER',
                                  textAlign: TextAlign.center,
                                ),
                                subtitle: Text(
                                  'Keluarga Angkatan 2019',
                                  style:
                                      TextStyle(color: Colors.black.withOpacity(0.6)),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {},
                        child: BuildCardWidget('force-logo/family-2019/1900001.jpg', 'Amar Musaddad', '1908027\nSee Email & LinkedIn >>'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {},
                        child: BuildCardWidget('force-logo/family-2019/1900002.jpg', 'Basuki Rahmat', '1901092\nSee Email & LinkedIn >>'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {},
                        child: BuildCardWidget('force-logo/family-2019/1900003.jpeg', 'Fawwaz Kautsar', '1907912\nSee Email & LinkedIn >>'),
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

  Card BuildCardWidget(String _imgDiretory, String _title, String _subtitle){
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
            title: Text(_title, textAlign: TextAlign.center),
            subtitle: Text(
              _subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            // leading: const Icon(Icons.supervisor_account_outlined),
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
