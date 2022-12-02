import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact List'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Dosen()),
                          // );
                        },
                        child: BuildCardWidget(
                          'university/upi-bumsil.jpg', 'UPI Bumi Siliwangi Bandung', 'Jl. Dr Setiabudhi No 229'
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {},
                        child: BuildCardWidget(
                          'university/upi-cibiru.jpg', 'UPI Cibiru Bandung', 'Jl. Pendidikan No.15, Cibiru Wetan'
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {},
                        child: BuildCardWidget(
                          'university/upi-purwakarta.jpg', 'UPI Purwakarta', 'Jl. Veteran No.8, Nagri Kaler'
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {},
                        child: BuildCardWidget(
                          'university/upi-serang.jpg', 'UPI Serang', 'Jl. Ciracas No.38, Serang'
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {},
                        child: BuildCardWidget(
                          'university/upi-sumedang.jpg', 'UPI Sumedang', 'Jl. Mayor Abdurahman No.211, Kotakaler'
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {},
                        child: BuildCardWidget(
                          'university/upi-tasikmalaya.jpg', 'UPI Tasikmalaya', 'Jl. Dadaha No. 18, Tasikmalaya'
                        )
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }

  Card BuildCardWidget(String _imgDiretory, String _name, String _address){
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
            title: Text(_name, textAlign: TextAlign.center),
            subtitle: Text(
              _address,
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
