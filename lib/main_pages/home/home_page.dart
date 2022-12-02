import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kalani App'),
          backgroundColor: Colors.red.shade900,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    // Container(
                    //   margin: EdgeInsets.only(top: 30),
                    //   width: 100,
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(100.0),
                    //     child: Image.asset(
                    //       'no-profile.png', 
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 350,
                    //   child: InkWell(
                    //     splashColor: Colors.blue.withAlpha(30),
                    //     onTap: () {
                    //       // Navigator.push(
                    //       //   context,
                    //       //   MaterialPageRoute(builder: (context) => Dosen()),
                    //       // );
                    //     },
                    //     child: Card(
                    //       margin: EdgeInsets.only(top: 30),
                    //       semanticContainer: true,
                    //       clipBehavior: Clip.antiAliasWithSaveLayer,
                    //       child: Column(
                    //         children: [
                    //           Image.asset(
                    //             'university/upi-bumsil.jpg',
                    //             fit: BoxFit.cover,
                    //           ),
                    //           ListTile(
                    //             title: const Text('UPI Bumi Siliwangi Bandung', textAlign: TextAlign.center),
                    //             subtitle: Text(
                    //               'Jl. Dr Setiabudhi No 229',
                    //               textAlign: TextAlign.center,
                    //               style: TextStyle(
                    //                 color: Colors.black.withOpacity(0.6),
                    //               ),
                    //             ),
                    //             // leading: const Icon(Icons.supervisor_account_outlined),
                    //           ),
                    //         ],
                    //       ),
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(10.0),
                    //       ),
                    //       elevation: 10,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
