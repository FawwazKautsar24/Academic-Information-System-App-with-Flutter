import 'package:flutter/material.dart';

class LectureFPMIPAPage extends StatefulWidget {
  const LectureFPMIPAPage({super.key});

  @override
  State<LectureFPMIPAPage> createState() => _LectureFPMIPAPageState();
}

class _LectureFPMIPAPageState extends State<LectureFPMIPAPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lecture FPMIPA Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Dosen FPMIPA'),
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
                                'Jumlah Dosen\nFakultas Pendidikan Matematika\ndan Ilmu Pengetahuan Alam',
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
                              '160',
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
                                BuildDataColumnWidget('Dosen'),
                                BuildDataColumnWidget('Publikasi'),
                              ], 
                              rows: [
                                BuildDataRowWidget('Pendidikan Matematika', '20', '80'),
                                BuildDataRowWidget('Pendidikan Fisika', '17', '58'),
                                BuildDataRowWidget('Pendidikan Biologi', '16', '50'),
                                BuildDataRowWidget('Pendidikan Kimia', '18', '54'),
                                BuildDataRowWidget('Pendidikan Ilmu Komputer', '16', '52'),
                                BuildDataRowWidget('Pendidikan Ilmu Pengetahuan Alam', '4', '17'),
                              ],//91
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
                                BuildDataColumnWidget('Dosen'),
                                BuildDataColumnWidget('Publikasi'),
                              ], 
                              rows: [
                                BuildDataRowWidget('Matematika', '14', '41'),
                                BuildDataRowWidget('Fisika', '12', '33'),
                                BuildDataRowWidget('Biologi', '12', '37'),
                                BuildDataRowWidget('Kimia', '16', '46'),
                                BuildDataRowWidget('Ilmu Komputer', '15', '44'),
                              ],//69
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

  DataRow BuildDataRowWidget(String _major, String _val1, String _val2){
    return DataRow(
      cells: [
        DataCell(Text(_major)),
        DataCell(Text(_val1)),
        DataCell(Text(_val2)),
      ]
    );
  }
}
