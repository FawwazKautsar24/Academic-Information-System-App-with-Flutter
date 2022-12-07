import 'package:flutter/material.dart';

class StudentKemakom2015Page extends StatefulWidget {
  const StudentKemakom2015Page({super.key});

  @override
  State<StudentKemakom2015Page> createState() => _StudentKemakom2015PageState();
}

class _StudentKemakom2015PageState extends State<StudentKemakom2015Page> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Force 2015 Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Angkatan 2015'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 30),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "force-logo/angkatan15.jpg",
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
                                  'OMICRON',
                                  textAlign: TextAlign.center,
                                ),
                                subtitle: Text(
                                  'Keluarga Angkatan 2015',
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
                        child: BuildCardWidget('force-logo/family-2015/1900001.jpg', 'Ryan Firdaus', '1500001\nSee Email & LinkedIn >>'),
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
                        child: BuildCardWidget('force-logo/family-2015/1900002.jpg', 'Rahmat Syaidul', '1500002\nSee Email & LinkedIn >>'),
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
                        child: BuildCardWidget('force-logo/family-2015/1900003.jpeg', 'Ridwan Utama', '1500003\nSee Email & LinkedIn >>'),
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
