import 'package:flutter/material.dart';

class LecturePage extends StatefulWidget {
  const LecturePage({super.key});

  @override
  State<LecturePage> createState() => _LecturePageState();
}

class _LecturePageState extends State<LecturePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lecture Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('UPI Lecture'),
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
                                    'Jumlah Dosen\nUniversitas Pendidikan Indonesia',
                                    textAlign: TextAlign.center,
                                  ),
                                subtitle: Text(
                                  '700++',
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
                    onTap: () {},
                    child: BuildCardWidget3('Data Dosen UPI', 'Jumlah Dosen & Asisten Dosen'),
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
                    child: BuildCardWidget3('Data Dosen FPMIPA', 'Jumlah Dosen & Asisten Dosen'),
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
            leading: const Icon(Icons.home_work_outlined),
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
