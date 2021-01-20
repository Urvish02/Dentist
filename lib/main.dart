import 'package:dentist/Treatment_plan.dart';
import 'package:dentist/photo_details.dart';
import 'package:dentist/scans.dart';
import 'package:dentist/xray_ct.dart';
import 'package:flutter/material.dart';

import 'patient_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      routes: {
        PatientDetails.id: (context) => PatientDetails(),
        Treatmentplan.id: (context) => Treatmentplan(),
        photodetails.id: (context) => photodetails(),
        xrayct.id: (context) => xrayct(),
        scans.id: (context) => scans(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Dentist'),
              decoration: BoxDecoration(
                color: Colors.tealAccent,
              ),
            ),
            ListTile(
              title: Text('Patient Data'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetails()),
                );
              },
            ),
            ListTile(
              title: Text('Treatment Plan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Treatmentplan()),
                );
              },
            ),
            ListTile(
              title: Text('Photo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => photodetails()),
                );
              },
            ),
            ListTile(
              title: Text('X-ray and CT'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => xrayct()),
                );
              },
            ),
            ListTile(
              title: Text('Scans / Impressions'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => scans()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
