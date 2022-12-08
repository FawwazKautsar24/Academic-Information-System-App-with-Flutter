import 'package:flutter/material.dart';

class ContactBumsilPage extends StatefulWidget {
  const ContactBumsilPage({super.key});

  @override
  State<ContactBumsilPage> createState() => _ContactBumsilPageState();
}

class _ContactBumsilPageState extends State<ContactBumsilPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPI Bumsil Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('UPI Bumsil Contact'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                                Text('Kontak Penting', 
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
                                BuildDataColumnWidget('Kontak'),
                                BuildDataColumnWidget('Email'),
                              ], 
                              rows: [
                                BuildDataRowWidget('UPI Bumsil', 'piuupi@upi.edu'),
                                BuildDataRowWidget('Rektor', 'rektor@upi.edu'),
                                BuildDataRowWidget('Wakil Rektor', 'warek@upi.edu'),
                                BuildDataRowWidget('Dekan FPMIPA', 'fpmipa@upi.edu'),
                                BuildDataRowWidget('Dekan FIP', 'fip@upi.edu'),
                                BuildDataRowWidget('Dekan FPBS', 'fpbs@upi.edu'),
                                BuildDataRowWidget('Dekan FPEB', 'fpeb@upi.edu'),
                                BuildDataRowWidget('Dekan FPIPS', 'fpips@upi.edu'),
                                BuildDataRowWidget('Dekan FPOK', 'fpok@upi.edu'),
                                BuildDataRowWidget('Dekan FPTK', 'fptk@upi.edu'),
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
                                Text('FPMIPA', 
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
                                BuildDataColumnWidget('Kontak Kaprodi'),
                                BuildDataColumnWidget('Email'),
                              ], 
                              rows: [
                                BuildDataRowWidget('Pendidikan Matematika', 'kaprodi_pmtk@upi.edu'),
                                BuildDataRowWidget('Pendidikan Fisika', 'kaprodi_pfsk@upi.edu'),
                                BuildDataRowWidget('Pendidikan Biologi', 'kaprodi_pbio@upi.edu'),
                                BuildDataRowWidget('Pendidikan Kimia', 'kaprodi_pkim@upi.edu'),
                                BuildDataRowWidget('Pendidikan Ilmu Komputer', 'kaprodi_pkom@upi.edu'),
                                BuildDataRowWidget('Pendidikan Ilmu Pengetahuan Alam', 'kaprodi_pipa@upi.edu'),
                                BuildDataRowWidget('Matematika', 'kaprodi_mtk@upi.edu'),
                                BuildDataRowWidget('Fisika', 'kaprodi_fsk@upi.edu'),
                                BuildDataRowWidget('Biologi', 'kaprodi_bio@upi.edu'),
                                BuildDataRowWidget('Kimia', 'kaprodi_kim@upi.edu'),
                                BuildDataRowWidget('Ilmu Komputer', 'kaprodi_kom@upi.edu'),
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

  DataRow BuildDataRowWidget(String _major, String _val){
    return DataRow(
      cells: [
        DataCell(Text(_major)),
        DataCell(Text(_val)),
      ]
    );
  }
}
