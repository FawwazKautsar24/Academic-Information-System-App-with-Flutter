import 'package:flutter/material.dart';

class AlumniUPIPage extends StatefulWidget {
  const AlumniUPIPage({super.key});

  @override
  State<AlumniUPIPage> createState() => _AlumniUPIPageState();
}

class _AlumniUPIPageState extends State<AlumniUPIPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alumni UPI Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Alumni UPI'),
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
                              '1,5m++',
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
                                BuildDataRowWidget('FIP', '161.700', '10.200', '5.150', '-'),
                                BuildDataRowWidget('FPBS', '150.860', '13.700', '3.100', '-'),
                                BuildDataRowWidget('FPEB', '53.750', '-', '-', '-'),
                                BuildDataRowWidget('FPIPS', '146.350', '11.650', '3.800', '-'),
                                BuildDataRowWidget('FPMIPA', '101.250', '26.900', '78.500', '-'),
                                BuildDataRowWidget('FPOK', '94.420', '-', '-', '-'),
                                BuildDataRowWidget('FPTK', '145.750', '-', '-', '-'),
                                BuildDataRowWidget('Kampus Daerah', '314.400', '2.700', '-', '-'),
                                BuildDataRowWidget('SPs', '-', '229.600', '36.200', '101.200'),
                                BuildDataRowWidget('FPSD', '70.100', '-', '-', '-'),
                                BuildDataRowTotalWidget('Total', '1.279k', '144k', '56k', '101k'),
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
                                BuildDataRowWidget('FIP', '-', '25.250', '-', '-'),
                                BuildDataRowWidget('FPBS', '-', '33.900', '-', '-'),
                                BuildDataRowWidget('FPEB', '-', '62.600', '-', '-'),
                                BuildDataRowWidget('FPIPS', '12.300', '99.850', '-', '-'),
                                BuildDataRowWidget('FPMIPA', '-', '55.550', '150', '-'),
                                BuildDataRowWidget('FPOK', '8.450', '31.750', '-', '-'),
                                BuildDataRowWidget('FPTK', '3.700', '58.750', '350', '-'),
                                BuildDataRowWidget('Kampus Daerah', '19.650', '2.600', '-', '-'),
                                BuildDataRowWidget('SPs', '-', '-', '8.800', '14.800'),
                                BuildDataRowWidget('FPSD', '-', '27.500', '-', '-'),
                                BuildDataRowTotalWidget('Total', '44k', '496k', '9k', '14k'),
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
