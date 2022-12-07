import 'package:flutter/material.dart';

class LectureUPIPage extends StatefulWidget {
  const LectureUPIPage({super.key});

  @override
  State<LectureUPIPage> createState() => _LectureUPIPageState();
}

class _LectureUPIPageState extends State<LectureUPIPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lecture UPI Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Dosen UPI'),
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
                                'Jumlah Dosen\nUniversitas Pendidikan Indonesia',
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
                              '1.114',
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
                  width: 500,
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
                                BuildDataRowWidget('FIP', '32', '20', '10', '-'),
                                BuildDataRowWidget('FPBS', '31', '27', '6', '-'),
                                BuildDataRowWidget('FPEB', '175', '-', '-', '-'),
                                BuildDataRowWidget('FPIPS', '29', '23', '7', '-'),
                                BuildDataRowWidget('FPMIPA', '20', '53', '15', '-'),
                                BuildDataRowWidget('FPOK', '18', '-', '-', '-'),
                                BuildDataRowWidget('FPTK', '29', '-', '-', '-'),
                                BuildDataRowWidget('Kampus Daerah', '62', '5', '-', '-'),
                                BuildDataRowWidget('SPs', '-', '15', '72', '20'),
                                BuildDataRowWidget('FPSD', '14', '-', '-', '-'),
                                BuildDataRowTotalWidget('Total', '410', '143', '110', '20'),
                              ],//683
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
                  width: 500,
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
                                BuildDataRowWidget('FIP', '-', '20', '-', '-'),
                                BuildDataRowWidget('FPBS', '-', '33', '-', '-'),
                                BuildDataRowWidget('FPEB', '-', '62', '-', '-'),
                                BuildDataRowWidget('FPIPS', '20', '67', '-', '-'),
                                BuildDataRowWidget('FPMIPA', '-', '50', '3', '-'),
                                BuildDataRowWidget('FPOK', '22', '31', '-', '-'),
                                BuildDataRowWidget('FPTK', '3', '71', '1', '-'),
                                BuildDataRowWidget('Kampus Daerah', '13', '4', '-', '-'),
                                BuildDataRowWidget('SPs', '-', '-', '13', '15'),
                                BuildDataRowWidget('FPSD', '-', '38', '-', '-'),
                                BuildDataRowTotalWidget('Total', '71', '328', '17', '15'),
                              ],//431
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
