import 'package:flutter/material.dart';

/*
  Data Source : 
  https://pddikti.kemdikbud.go.id/data_pt/QkNGNjNCMDctRTcwMi00OTA3LTk2MjEtMjFERDdBRUY3NEI0
*/

class StudentFPMIPAPage extends StatefulWidget {
  const StudentFPMIPAPage({super.key});

  @override
  State<StudentFPMIPAPage> createState() => _StudentFPMIPAPageState();
}

class _StudentFPMIPAPageState extends State<StudentFPMIPAPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student FPMIPA Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Mahasiswa FPMIPA'),
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
                              '1.553',
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
                                BuildDataColumnWidget('2019'),
                                BuildDataColumnWidget('2020'),
                                BuildDataColumnWidget('2021'),
                                BuildDataColumnWidget('2022'),
                              ], 
                              rows: [
                                BuildDataRowWidget('Pendidikan Matematika', '48', '48', '49', '50'),//195
                                BuildDataRowWidget('Pendidikan Fisika', '41', '43', '43', '42'),//169
                                BuildDataRowWidget('Pendidikan Biologi', '36', '39', '38', '41'),//154
                                BuildDataRowWidget('Pendidikan Kimia', '44', '46', '48', '49'),//187
                                BuildDataRowWidget('Pendidikan Ilmu Komputer', '37', '38', '38', '40'),//153
                                BuildDataRowWidget('Pendidikan Ilmu Pengetahuan Alam', '9', '9', '10', '10'),//38
                              ],//898
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
                                BuildDataColumnWidget('2019'),
                                BuildDataColumnWidget('2020'),
                                BuildDataColumnWidget('2021'),
                                BuildDataColumnWidget('2022'),
                              ], 
                              rows: [
                                BuildDataRowWidget('Matematika', '42', '41', '43', '44'),//170
                                BuildDataRowWidget('Fisika', '16', '18', '18', '20'),//72
                                BuildDataRowWidget('Biologi', '20', '19', '21', '22'),//82
                                BuildDataRowWidget('Kimia', '44', '46', '46', '48'),//184
                                BuildDataRowWidget('Ilmu Komputer', '36', '37', '38', '38'),//149
                              ],//657
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

  DataRow BuildDataRowWidget(String _major, String _val2019, String _val2020, String _val2021, String _val2022){
    return DataRow(
      cells: [
        DataCell(Text(_major)),
        DataCell(Text(_val2019)),
        DataCell(Text(_val2020)),
        DataCell(Text(_val2021)),
        DataCell(Text(_val2022)),
      ]
    );
  }
}
