import 'package:flutter/material.dart';

class StudentNewsInfoPage extends StatefulWidget {
  const StudentNewsInfoPage({super.key});

  @override
  State<StudentNewsInfoPage> createState() => _StudentNewsInfoPageState();
}

class _StudentNewsInfoPageState extends State<StudentNewsInfoPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Info Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('All News & Info'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 30),
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "logo-upi.png",
                      height: 60,
                      width: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Image.asset(
                      "logo-fpmipa.png",
                      height: 60,
                      width: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Image.asset(
                      "logo-kemakom.png",
                      height: 60,
                      width: 60,
                    ),
                  ],
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
                                  'Info & Berita',
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
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 40),
                  child: Text('Tidak ada info dan berita UPI, FPMIPA,\n& Kemakom terkini.', 
                    textAlign: TextAlign.center
                  ),
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
                                  'Kalender Akademik',
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
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 40),
                  child: SizedBox(
                    width: 400,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10), 
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('2022', 
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ]
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10), 
                              ),
                              DataTable(
                                columns: [
                                  BuildDataColumnWidget('Tanggal'),
                                  BuildDataColumnWidget('Deskripsi'),
                                ], 
                                rows: [
                                  BuildDataRowWidget('23 Des', 'Akhir Perkuliahan'),
                                  BuildDataRowWidget('26 Des', 'Mulai Ujian Akhir Semester'),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(20), 
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('2023', 
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ]
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10), 
                              ),
                              DataTable(
                                columns: [
                                  BuildDataColumnWidget('Tanggal'),
                                  BuildDataColumnWidget('Deskripsi'),
                                ], 
                                rows: [
                                  BuildDataRowWidget('6 Jan', 'Akhir Ujian Akhir Semester'),
                                  BuildDataRowWidget('9-13 Jan', 'Pemeriksaan & Pemasukan\nNilai UAS'),
                                  BuildDataRowWidget('9-13 Jan', 'Remedial & Ujian Ulang'),
                                  BuildDataRowWidget('9-16 Jan', 'Pemasukan Nilai Ujian Ulang'),
                                  BuildDataRowWidget('9-16 Jan', 'Pemasukan Nilai Ujian Ulang'),
                                  BuildDataRowWidget('26 Feb', 'Awal Pemasukan Nilai KKN'),
                                  BuildDataRowWidget('14 Mar', 'Akhir Pemasukan Nilai KKN'),
                                ],
                              )
                            ]
                          )
                        ),
                      ],
                    )
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }

  DataColumn BuildDataColumnWidget(String _title){
    return DataColumn(
      label: Text(_title, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  DataRow BuildDataRowWidget(String _month, String _desc){
    return DataRow(
      cells: [
        DataCell(Text(_month)),
        DataCell(Text(_desc)),
      ]
    );
  }
}
