import 'package:flutter/material.dart';

/*
  Data Source : 
*/

class StudentDepilkomPage extends StatefulWidget {
  const StudentDepilkomPage({super.key});

  @override
  State<StudentDepilkomPage> createState() => _StudentDepilkomPageState();
}

class _StudentDepilkomPageState extends State<StudentDepilkomPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Depilkom Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Mahasiswa Depilkom'),
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
                                'Jumlah Mahasiswa\nDepartemen Pendidikan Ilmu Komputer',
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
                              '293',
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
                                Text('Pendidikan Ilmu Komputer', 
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
                                BuildDataColumnWidget('Angkatan'),
                                BuildDataColumnWidget('2019'),
                                BuildDataColumnWidget('2020'),
                                BuildDataColumnWidget('2021'),
                                BuildDataColumnWidget('2022'),
                              ], 
                              rows: [
                                BuildDataRowWidget('Jumlah Mahasiswa', '37', '38', '38', '40'),//144
                                BuildDataRowWidget('Jumlah Beasiswa', '6', '7', '5', '6'),
                                BuildDataRowWidget('Belum bayar UKT', '0', '1', '2', '0'),
                                BuildDataRowWidget('Mengikuti Organisasi', '23', '20', '22', '16'),
                                BuildDataRowWidget('Mengikuti Perlombaan', '45', '37', '29', '8'),
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
                                Text('Ilmu Komputer', 
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
                                BuildDataColumnWidget('Angkatan'),
                                BuildDataColumnWidget('2019'),
                                BuildDataColumnWidget('2020'),
                                BuildDataColumnWidget('2021'),
                                BuildDataColumnWidget('2022'),
                              ], 
                              rows: [
                                BuildDataRowWidget('Jumlah Mahasiswa', '36', '37', '38', '38'),//149
                                BuildDataRowWidget('Jumlah Beasiswa', '6', '8', '7', '6'),
                                BuildDataRowWidget('Belum bayar UKT', '0', '2', '2', '0'),
                                BuildDataRowWidget('Mengikuti Organisasi', '18', '19', '16', '12'),
                                BuildDataRowWidget('Mengikuti Perlombaan', '41', '34', '29', '11'),
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

  DataRow BuildDataRowWidget(String _desc, String _val2019, String _val2020, String _val2021, String _val2022){
    return DataRow(
      cells: [
        DataCell(Text(_desc)),
        DataCell(Text(_val2019)),
        DataCell(Text(_val2020)),
        DataCell(Text(_val2021)),
        DataCell(Text(_val2022)),
      ]
    );
  }
}
