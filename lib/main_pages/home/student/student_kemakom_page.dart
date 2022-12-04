import 'package:flutter/material.dart';
// import 'package:simple_shopping_mall_app_with_flutter/main_pages/home/student/student_page.dart';

class StudentKemakomPage extends StatefulWidget {
  const StudentKemakomPage({super.key});

  @override
  State<StudentKemakomPage> createState() => _StudentKemakomPageState();
}

class _StudentKemakomPageState extends State<StudentKemakomPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Force Kemakom Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Angkatan Kemakom'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 30),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "logo-kemakom.png",
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
                                  'Keluarga Mahasiswa Komputer',
                                  textAlign: TextAlign.center,
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
                        child: BuildCardWidget('force-logo/angkatan19.jpg', 'F19THER', 'Keluarga Angkatan 2019'),
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
                        child: BuildCardWidget('force-logo/angkatan20.jpg', 'ST20NG', 'Keluarga Angkatan 2020'),
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
                        child: BuildCardWidget('force-logo/angkatan21.jpg', 'A21SE', 'Keluarga Angkatan 2021'),
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
