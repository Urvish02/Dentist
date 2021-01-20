import 'package:dentist/photo_details.dart';
import 'package:dentist/scans.dart';
import 'package:flutter/material.dart';

class xrayct extends StatefulWidget {
  static String id = 'xray_ct';

  @override
  _xrayctState createState() => _xrayctState();
}

class _xrayctState extends State<xrayct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('X-ray and CT'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, photodetails.id);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, scans.id);
              },
              child: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ),
            FlatButton(
              onPressed: null,
              child: Icon(Icons.close),
            ),
            FlatButton(
              onPressed: null,
              child: Icon(Icons.check),
            ),
          ],
        ),
      ),
      body: Text('xrayct'),
    );
  }
}
