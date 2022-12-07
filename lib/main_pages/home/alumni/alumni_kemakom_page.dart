import 'package:flutter/material.dart';

class AlumniKemakomPage extends StatefulWidget {
  const AlumniKemakomPage({super.key});

  @override
  State<AlumniKemakomPage> createState() => _AlumniKemakomPageState();
}

class _AlumniKemakomPageState extends State<AlumniKemakomPage> {

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
                        child: BuildCardWidget('force-logo/angkatan15.jpg', 'OMICRON', 'Keluarga Angkatan 2015'),
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
                        child: BuildCardWidget('force-logo/angkatan16.jpg', 'BINARY', 'Keluarga Angkatan 2016'),
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
                        child: BuildCardWidget('force-logo/angkatan17.jpg', 'UNITY', 'Keluarga Angkatan 2017'),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 200,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {},
                        child: BuildCardWidget('force-logo/angkatan18.jpg', 'SPARK', 'Keluarga Angkatan 2018'),
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
