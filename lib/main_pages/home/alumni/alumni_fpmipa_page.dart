import 'package:flutter/material.dart';

class AlumniFPMIPAPage extends StatefulWidget {
  const AlumniFPMIPAPage({super.key});

  @override
  State<AlumniFPMIPAPage> createState() => _AlumniFPMIPAPageState();
}

class _AlumniFPMIPAPageState extends State<AlumniFPMIPAPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alumni FPMIPA Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Alumni FPMIPA'),
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
                                'Jumlah Mahasiswa\nFakultas Pendidikan Matematika\ndan Ilmu Pengetahuan Alam',
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
                              '7.410',
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
                                BuildDataColumnWidget('Prodi'),
                                BuildDataColumnWidget('Jumlah Alumni'),
                              ], 
                              rows: [
                                BuildDataRowWidget('Pendidikan Matematika', '960'),
                                BuildDataRowWidget('Pendidikan Fisika', '820'),
                                BuildDataRowWidget('Pendidikan Biologi', '720'),
                                BuildDataRowWidget('Pendidikan Kimia', '880'),
                                BuildDataRowWidget('Pendidikan Ilmu Komputer', '740'),
                                BuildDataRowWidget('Pendidikan Ilmu Pengetahuan Alam', '180'),
                              ],//4250
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
                                BuildDataColumnWidget('Prodi'),
                                BuildDataColumnWidget('Jumlah Alumni'),
                              ], 
                              rows: [
                                BuildDataRowWidget('Matematika', '840'),
                                BuildDataRowWidget('Fisika', '320'),
                                BuildDataRowWidget('Biologi', '400'),
                                BuildDataRowWidget('Kimia', '880'),
                                BuildDataRowWidget('Ilmu Komputer', '720'),
                              ],//3160
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

  DataRow BuildDataRowWidget(String _major, String _val){
    return DataRow(
      cells: [
        DataCell(Text(_major)),
        DataCell(Text(_val)),
      ]
    );
  }
}
