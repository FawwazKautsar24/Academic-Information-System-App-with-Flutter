import 'package:flutter/material.dart';

/*
  Data Source : 
  https://bandungkota.bps.go.id/statictable/2021/03/23/1454/populasi-mahasiswa-di-universitas-pendidikan-indonesia-bandung-menurut-program-studi-2020.html
*/

class StudentUPIPage extends StatefulWidget {
  const StudentUPIPage({super.key});

  @override
  State<StudentUPIPage> createState() => _StudentUPIPageState();
}

class _StudentUPIPageState extends State<StudentUPIPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student UPI Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Mahasiswa UPI'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 450,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        child: Column(
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10), 
                            ),
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Text(
                                'Jumlah Mahasiswa\nUniversitas Pendidikan Indonesia',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ), 
                            ),
                            Padding(
                              padding: EdgeInsets.all(5), 
                            ),
                            Text(
                              '41.912',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10), 
                            )
                          ],
                        )
                      ),
                    ],
                  )
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                ),
                SizedBox(
                  width: 600,
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
                                Text('Program Kependidikan', 
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text(' (Teaching Program)', 
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic
                                ),),
                              ]
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10), 
                            ),
                            DataTable(
                              columns: [
                                BuildDataColumnWidget('Fakultas'),
                                BuildDataColumnWidget('S1'),
                                BuildDataColumnWidget('S2'),
                                BuildDataColumnWidget('S3'),
                                BuildDataColumnWidget('Profesi'),
                              ], 
                              rows: [
                                BuildDataRowWidget('FIP', '3.234', '204', '103', '-'),
                                BuildDataRowWidget('FPBS', '3.162', '274', '62', '-'),
                                BuildDataRowWidget('FPEB', '1.750', '-', '-', '-'),
                                BuildDataRowWidget('FPIPS', '2.927', '233', '76', '-'),
                                BuildDataRowWidget('FPMIPA', '2.025', '538', '157', '-'),
                                BuildDataRowWidget('FPOK', '1.885', '-', '-', '-'),
                                BuildDataRowWidget('FPTK', '2.915', '-', '-', '-'),
                                BuildDataRowWidget('Kampus Daerah', '6.288', '52', '-', '-'),
                                BuildDataRowWidget('SPs', '-', '1.592', '724', '2.024'),
                                BuildDataRowWidget('FPSD', '1.402', '-', '-', '-'),
                                BuildDataRowTotalWidget('Total', '25.588', '2.893', '1.122', '2.024'),
                              ],
                            )
                          ]
                        )
                      ),
                    ],
                  )
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                ),
                SizedBox(
                  width: 600,
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
                                Text('Program Nonpendidikan', 
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text(' (Non-teaching Program)', 
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic
                                ),),
                              ]
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10), 
                            ),
                            DataTable(
                              columns: [
                                BuildDataColumnWidget('Fakultas'),
                                BuildDataColumnWidget('D3'),
                                BuildDataColumnWidget('S1'),
                                BuildDataColumnWidget('S2'),
                                BuildDataColumnWidget('S3'),
                              ], 
                              rows: [
                                BuildDataRowWidget('FIP', '-', '505', '-', '-'),
                                BuildDataRowWidget('FPBS', '-', '678', '-', '-'),
                                BuildDataRowWidget('FPEB', '-', '1.252', '-', '-'),
                                BuildDataRowWidget('FPIPS', '246', '1.997', '-', '-'),
                                BuildDataRowWidget('FPMIPA', '-', '1.111', '3', '-'),
                                BuildDataRowWidget('FPOK', '169', '635', '-', '-'),
                                BuildDataRowWidget('FPTK', '74', '1.175', '7', '-'),
                                BuildDataRowWidget('Kampus Daerah', '393', '52', '-', '-'),
                                BuildDataRowWidget('SPs', '-', '-', '176', '296'),
                                BuildDataRowWidget('FPSD', '-', '550', '-', '-'),
                                BuildDataRowTotalWidget('Total', '882', '9.921', '186', '293'),
                              ],
                            )
                          ]
                        )
                      ),
                    ],
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  DataColumn BuildDataColumnWidget(String _title){
    return DataColumn(
      label: Text(_title, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  DataRow BuildDataRowWidget(String _faculty, String _valS1, String _valS2, String _valS3, String _valProf){
    return DataRow(
      cells: [
        DataCell(Text(_faculty)),
        DataCell(Text(_valS1)),
        DataCell(Text(_valS2)),
        DataCell(Text(_valS3)),
        DataCell(Text(_valProf)),
      ]
    );
  }

  DataRow BuildDataRowTotalWidget(String _faculty, String _valS1, String _valS2, String _valS3, String _valProf){
    return DataRow(
      cells: [
        DataCell(Text(_faculty, style: TextStyle(fontWeight: FontWeight.bold))),
        DataCell(Text(_valS1, style: TextStyle(fontWeight: FontWeight.bold))),
        DataCell(Text(_valS2, style: TextStyle(fontWeight: FontWeight.bold))),
        DataCell(Text(_valS3, style: TextStyle(fontWeight: FontWeight.bold))),
        DataCell(Text(_valProf, style: TextStyle(fontWeight: FontWeight.bold))),
      ]
    );
  }
}